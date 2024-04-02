# FortnoxEx

Unofficial API Client for Fortnox. For more details about Fortnox API, please see
[https://developer.fortnox.se/documentation/](https://developer.fortnox.se/documentation/)

Built from Unofficial OpenAPI Specification at
[https://github.com/rsystem-se/fortnox_openapi](https://github.com/rsystem-se/fortnox_openapi)

The documentation for FortnoxEx can be found at
[https://hexdocs.pm/fortnox_ex](https://hexdocs.pm/fortnox_ex)

### Missing or incorrect features

Please see the specification at https://github.com/rsystem-se/fortnox_openapi before opening any issues in this
repository.

### Stability and Quality of this library

Not used in production. Untested to most degree. Help wanted. Rate limiting is tested. Use with caution.

### Building

To install the required dependencies and to build the elixir project, run:

```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fortnox_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:fortnox_ex, "~> 0.4.2"}]
end
```

## Configuration

### config.exs

```
config :fortnox_ex,
       client_id: "<CLIENT_ID_FROM_FORTNOX>",
       client_secret: "<CLIENT_SECRET_FROM_FORTNOX>"
```

## Usage

### Configuration in Fortnox

Please select the scopes that you would like to use, remember to also use them in the oAuth Authorization URL call.
Other than that you would also need to enable authorization as a service account (Möjliggör auktorisering som
servicekonto), without this you'll not get this library to work.

### Get the oAuth Authorization URL

```
@fortnox_scopes ["companyinformation", "article", "payment", "invoice", "currency", "customer"]
redirect_url = "URL TO APPLICATION HERE"

FortnoxEx.Authorization.get_authorization_code_url(
    redirect_url,
    @fortnox_scopes,
    "random-state"
)
```

### Exchanging an authorization code for an access token

```
redirect_url = "URL TO APPLICATION HERE"
FortnoxEx.Connection.get_access_token(authorization_code, redirect_url)
{:ok, "65cc2c87-de81-45d6-c792-aad68528ff17"}
```

### Using a GenServer to automatically refresh tokens
#### /my_project/workers/fortnox_worker.ex
```
defmodule MyProject.FortnoxWorker do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, %{})
  end

  @impl true
  def init(state) do
    # Schedule work to be performed on start
    schedule_work()

    {:ok, state}
  end

  @impl true
  def handle_info(:work, state) do
    # Do the desired work here
    run_job()

    # Reschedule once more
    schedule_work()

    {:noreply, state}
  end

  defp schedule_work do
    # We schedule the work to happen in 25 minutes (written in milliseconds).
    # Alternatively, one might write :timer.hours(2)
    Process.send_after(self(), :work, 25 * 60 * 1000)
  end

  def run_job() do
    fortnox_clients = MyProject.FortnoxClients.list_fortnox_clients()

    Enum.map(fortnox_clients, fn client ->
      case FortnoxEx.Authorization.get_refresh_token(client.refresh_token) do
        {:ok, body} ->
          access_token = Map.get(body, "access_token")
          refresh_token = Map.get(body, "refresh_token")

          client_params = %{
            "access_token" => access_token,
            "refresh_token" => refresh_token
          }

          MyProject.FortnoxClients.update_fortnox_client(client, client_params)

        {:error, _} ->
          # Delete it if we can't refresh it!
          MyProject.FortnoxClients.delete_fortnox_client(client)
      end
    end)
  end
end
```

#### /lib/my_project/application.ex
Add this line to your children in the start method:
```
  @impl true
  def start(_type, _args) do
    children = [
        ...
        MyProject.FortnoxWorker, # 25 minutes
        ...
    ]
```

### Sample fetch of a customer

```
connection = FortnoxEx.Connection.new("1234", "567890")
customer = FortnoxEx.Api.Default.get_customer_by_customer_number(connection, "1")
IO.puts("Customer name is: #{customer."Name"}")
```

Note that the keys of the models are PascalCase and therefore needs to be
accessed like this: ````model."KeyName"```` instead of just ```model.KeyName```
