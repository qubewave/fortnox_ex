# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.EUVatLimitRegulationResource do
  @moduledoc """
  API calls for all endpoints tagged `EUVatLimitRegulationResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Retrieve details about eu vat limit

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): eu vat limit regulation for year, if not provided than this will be set to current year

  ### Returns

  - `{:ok, FortnoxEx.Model.EuVatLimitRegulationWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_eu_vat_limit_regulation_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.EuVatLimitRegulationWrap.t} | {:error, Tesla.Env.t}
  def get_eu_vat_limit_regulation_resource(connection, opts \\ []) do
    optional_params = %{
      :year => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/euvatlimitregulation/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.EuVatLimitRegulationWrap{}}
    ])
  end
end
