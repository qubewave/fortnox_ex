# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.PredefinedVoucherSeriesResource do
  @moduledoc """
  API calls for all endpoints tagged `PredefinedVoucherSeriesResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Retrieve a specific predefined voucher series

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `name` (String.t): identifies the predefined voucher series
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PredefinedVoucherSeriesWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_predefined_voucher_series_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.PredefinedVoucherSeriesWrap.t} | {:error, Tesla.Env.t}
  def get_predefined_voucher_series_resource(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/predefinedvoucherseries/#{name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PredefinedVoucherSeriesWrap{}}
    ])
  end

  @doc """
  Retrieve a list of predefined voucher series

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PredefinedVoucherSeriesList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_predefined_voucher_series_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.PredefinedVoucherSeriesList.t} | {:error, Tesla.Env.t}
  def list_predefined_voucher_series_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/predefinedvoucherseries/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PredefinedVoucherSeriesList{}}
    ])
  end

  @doc """
  Update a predefined voucher series

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `name` (String.t): identifies the predefined voucher series
  - `opts` (keyword): Optional parameters
    - `:body` (PredefinedVoucherSeriesWrap): predefined voucher series to update

  ### Returns

  - `{:ok, FortnoxEx.Model.PredefinedVoucherSeriesWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_predefined_voucher_series_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.PredefinedVoucherSeriesWrap.t} | {:error, Tesla.Env.t}
  def update_predefined_voucher_series_resource(connection, name, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/predefinedvoucherseries/#{name}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PredefinedVoucherSeriesWrap{}}
    ])
  end
end
