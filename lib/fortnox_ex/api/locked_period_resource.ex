# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.LockedPeriodResource do
  @moduledoc """
  API calls for all endpoints tagged `LockedPeriodResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Retrieve the locked period
  If no date is returned, no period is locked.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.LockedPeriodWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_locked_period_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.LockedPeriodWrap.t} | {:error, Tesla.Env.t}
  def get_locked_period_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/settings/lockedperiod/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.LockedPeriodWrap{}}
    ])
  end
end