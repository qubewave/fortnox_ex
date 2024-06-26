# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.ContractAccrualsResource do
  @moduledoc """
  API calls for all endpoints tagged `ContractAccrualsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a contract accrual

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ContractAccrualWrap): contract accrual to create

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractAccrualWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_contract_accruals_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ContractAccrualWrap.t} | {:error, Tesla.Env.t}
  def create_contract_accruals_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/contractaccruals/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractAccrualWrap{}}
    ])
  end

  @doc """
  Retrieve a single contract accrual

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `document_number` (integer()): identifies the contract accrual
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractAccrualWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_contract_accruals_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ContractAccrualWrap.t} | {:error, Tesla.Env.t}
  def get_contract_accruals_resource(connection, document_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/contractaccruals/#{document_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractAccrualWrap{}}
    ])
  end

  @doc """
  Retrieve a list of contract accruals
  The contract accruals register can return a list of records or a single record. By specifying a DocumentNumber in the URL, a single record will be returned. Not specifying a DocumentNumber will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractAccrualListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_contract_accruals_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ContractAccrualListItemList.t} | {:error, Tesla.Env.t}
  def list_contract_accruals_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/contractaccruals/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractAccrualListItemList{}}
    ])
  end

  @doc """
  Remove a contract accrual

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `document_number` (integer()): identifies the contract accrual
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_contract_accruals_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_contract_accruals_resource(connection, document_number, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/contractaccruals/#{document_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a contract accrual

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `document_number` (integer()): identifies the contract accrual
  - `opts` (keyword): Optional parameters
    - `:body` (ContractAccrualWrap): contract accrual to update

  ### Returns

  - `{:ok, FortnoxEx.Model.ContractAccrualWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_contract_accruals_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ContractAccrualWrap.t} | {:error, Tesla.Env.t}
  def update_contract_accruals_resource(connection, document_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/contractaccruals/#{document_number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ContractAccrualWrap{}}
    ])
  end
end
