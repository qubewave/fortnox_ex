defmodule FortnoxEx.Authorization do
  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @fortnox_api_url "https://apps.fortnox.se/oauth-v1"

  def get_authorization_code_url(redirect_url, scopes, state \\ nil) do
    client_id = "#{Application.get_env(:fortnox_ex, :client_id)}"
    client_secret = "#{Application.get_env(:fortnox_ex, :client_secret)}"
    credentials = Base.encode64("#{client_id}:#{client_secret}")
    parsed_scopes = Enum.join(scopes, "%20")
    parsed_state = if state != nil, do: "#{state}", else: "default_state"

    params =
      "?client_id=#{client_id}&redirect_uri=#{redirect_url}&scope=#{parsed_scopes}&state=#{parsed_state}&access_type=offline&response_type=code&account_type=service"

    "#{@fortnox_api_url}/auth#{params}"
  end

  def get_access_token(code, redirect_url) do
    client_id = "#{Application.get_env(:fortnox_ex, :client_id)}"
    client_secret = "#{Application.get_env(:fortnox_ex, :client_secret)}"
    credentials = Base.encode64("#{client_id}:#{client_secret}")

    req_body =
      %{
        "code" => "#{code}",
        "grant_type" => "authorization_code",
        "redirect_uri" => "#{redirect_url}"
      }
      |> URI.encode_query()

    headers = [
      "content-type": "application/x-www-form-urlencoded",
      Authorization: "Basic #{credentials}"
    ]

    case HTTPoison.post(
           "#{@fortnox_api_url}/token",
           req_body,
           headers
         ) do
      {:ok, %HTTPoison.Response{body: body}} ->
        get_status_from_access_code(body)

      _ ->
        {:error, "Network error..."}
    end
  end

  def get_refresh_token(refresh_token) do
    client_id = "#{Application.get_env(:fortnox_ex, :client_id)}"
    client_secret = "#{Application.get_env(:fortnox_ex, :client_secret)}"
    credentials = Base.encode64("#{client_id}:#{client_secret}")

    req_body =
      %{
        "refresh_token" => "#{refresh_token}",
        "grant_type" => "refresh_token",
      }
      |> URI.encode_query()

    headers = [
      "content-type": "application/x-www-form-urlencoded",
      Authorization: "Basic #{credentials}"
    ]

    case HTTPoison.post(
           "#{@fortnox_api_url}/token",
           req_body,
           headers
         ) do
      {:ok, %HTTPoison.Response{body: body}} ->
        get_status_from_access_code(body)

      _ ->
        {:error, "Network error..."}
    end
  end

  defp get_status_from_access_code(body) do
    decoded_body = Poison.decode!(body)

    case Map.has_key?(decoded_body, "access_token") do
      true -> {:ok, decoded_body}
      false -> {:error, decoded_body}
    end
  end
end
