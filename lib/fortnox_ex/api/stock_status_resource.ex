# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.StockStatusResource do
  @moduledoc """
  API calls for all endpoints tagged `StockStatusResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Get stock balance
  Get stock balance for one or more items for each stockpoint  with (inbound- or outbound-) deliveries.   Returns a list of <code>itemId</code>, <code>stockPointCode</code>,  <code>availableStock</code>, <code>inStock</code>.   (The difference between <code>availableStock</code> and <code>inStock</code>  is the reserved amount.)

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:itemIds` ([String.t]): A comma-separated list of itemIds.
    - `:stockPointCodes` ([String.t]): Optional filter on stock point codes (comma-separated).

  ### Returns

  - `{:ok, [%StockBalance{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_stock_balance(Tesla.Env.client, keyword()) :: {:ok, list(FortnoxEx.Model.StockBalance.t)} | {:error, Tesla.Env.t}
  def get_stock_balance(connection, opts \\ []) do
    optional_params = %{
      :itemIds => :query,
      :stockPointCodes => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/status-v1/stockbalance")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%FortnoxEx.Model.StockBalance{}]}
    ])
  end
end
