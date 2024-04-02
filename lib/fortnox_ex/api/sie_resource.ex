# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.SieResource do
  @moduledoc """
  API calls for all endpoints tagged `SieResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Retrieve a SIE file
  Retrieves a SIE file as streamed content

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `type` (String.t): type
  - `opts` (keyword): Optional parameters
    - `:financialYear` (integer()): financialYear

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sie_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get_sie_resource(connection, type, opts \\ []) do
    optional_params = %{
      :financialYear => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/sie/#{type}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end
end
