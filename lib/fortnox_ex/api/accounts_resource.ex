# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.AccountsResource do
  @moduledoc """
  API calls for all endpoints tagged `AccountsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create an account
  The created account will be returned if everything succeeded, if there was any problems an error will be returned.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:financialyear` (integer()): financial year to create account against
    - `:body` (AccountPayloadWrap): account to create

  ### Returns

  - `{:ok, FortnoxEx.Model.AccountSingleItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_accounts_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.AccountSingleItemWrap.t} | {:error, Tesla.Env.t}
  def create_accounts_resource(connection, opts \\ []) do
    optional_params = %{
      :financialyear => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/accounts/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.AccountSingleItemWrap{}}
    ])
  end

  @doc """
  Retrieve an account
  Retrieves the details of an account. You need to supply the unique account number that was returned when the account was created or retrieved from the list of accounts.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the account
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.AccountSingleItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_accounts_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.AccountSingleItemWrap.t} | {:error, Tesla.Env.t}
  def get_accounts_resource(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/accounts/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.AccountSingleItemWrap{}}
    ])
  end

  @doc """
  List all accounts
  The accounts are returned sorted by account number with the lowest number appearing first.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:lastmodified` (String.t): 
    - `:sru` (integer()): 
    - `:sortby` (String.t): field to sort returned list on

  ### Returns

  - `{:ok, FortnoxEx.Model.AccountListItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_accounts_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.AccountListItemWrap.t} | {:error, Tesla.Env.t}
  def list_accounts_resource(connection, opts \\ []) do
    optional_params = %{
      :lastmodified => :query,
      :sru => :query,
      :sortby => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/3/accounts/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.AccountListItemWrap{}}
    ])
  end

  @doc """
  Update an account
  Updates the specified account with the values provided in the properties. Any property not provided will be left unchanged.  Note that even though the account number is writeable you can&acute;t change the number of an existing account.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the account
  - `opts` (keyword): Optional parameters
    - `:financialyear` (integer()): financial year to update account against
    - `:body` (AccountPayloadWrap): account to update

  ### Returns

  - `{:ok, FortnoxEx.Model.AccountSingleItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_accounts_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.AccountSingleItemWrap.t} | {:error, Tesla.Env.t}
  def update_accounts_resource(connection, number, opts \\ []) do
    optional_params = %{
      :financialyear => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/accounts/#{number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.AccountSingleItemWrap{}}
    ])
  end
end
