# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.ModesOfPaymentsResource do
  @moduledoc """
  API calls for all endpoints tagged `ModesOfPaymentsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a mode of payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ModeOfPaymentWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.ModeOfPaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_modes_of_payments_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ModeOfPaymentWrap.t} | {:error, Tesla.Env.t}
  def create_modes_of_payments_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/modesofpayments")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ModeOfPaymentWrap{}}
    ])
  end

  @doc """
  Retrieve a single mode of payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the mode of payment
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ModeOfPaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_modes_of_payments_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.ModeOfPaymentWrap.t} | {:error, Tesla.Env.t}
  def get_modes_of_payments_resource(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/modesofpayments/#{code}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ModeOfPaymentWrap{}}
    ])
  end

  @doc """
  Retrieve a list of modes of payments
  The modes of payments register can return a list of records or a single record. By specifying a Code in the URL, a single record will be returned. Not specifying a Code will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ModeOfPaymentList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_modes_of_payments_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ModeOfPaymentList.t} | {:error, Tesla.Env.t}
  def list_modes_of_payments_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/modesofpayments")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ModeOfPaymentList{}}
    ])
  end

  @doc """
  Update a mode of payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the mode of payment
  - `opts` (keyword): Optional parameters
    - `:body` (ModeOfPaymentWrap): mode of payment to update

  ### Returns

  - `{:ok, FortnoxEx.Model.ModeOfPaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_modes_of_payments_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.ModeOfPaymentWrap.t} | {:error, Tesla.Env.t}
  def update_modes_of_payments_resource(connection, code, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/modesofpayments/#{code}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ModeOfPaymentWrap{}}
    ])
  end
end
