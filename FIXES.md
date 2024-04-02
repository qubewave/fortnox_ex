Connection.ex
```
@spec new(String.t, String.t) :: Tesla.Env.client
  def new(client_secret, access_token) do
    headers = [
      {"Authorization", "Bearer #{access_token}"}
    ]

    middleware = [
      {Tesla.Middleware.BaseUrl, "https://api.fortnox.se/3"},
      {Tesla.Middleware.Logger, debug: false},
      {Tesla.Middleware.Headers, headers},
      {Tesla.Middleware.EncodeJson, engine: Poison},
      {
        Tesla.Middleware.Fuse,
        name: access_token,
        opts: {{:standard, 200, 60_000}, {:reset, 60_000}},
        keep_original_error: false,
        should_melt: fn
          {:ok, %{status: status}} when status in [429] -> true
          {:ok, _} -> false
          {:error, _} -> false
        end
      }
    ]

    adapter = {Tesla.Adapter.Hackney, [recv_timeout: 30_000]}
    Tesla.client(middleware, adapter)
  end
  ```


URLS should be
```
      |> url("/companyinformation")
```

and not 
````
      |> url("/companyinformation")
````
