# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.PriceListsResource do
  @moduledoc """
  API calls for all endpoints tagged `PriceListsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a price list

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (PriceListWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceListWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_price_lists_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.PriceListWrap.t} | {:error, Tesla.Env.t}
  def create_price_lists_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/pricelists")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceListWrap{}}
    ])
  end

  @doc """
  Retrieve a single price list

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the price list
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceListWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_price_lists_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.PriceListWrap.t} | {:error, Tesla.Env.t}
  def get_price_lists_resource(connection, code, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/pricelists/#{code}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceListWrap{}}
    ])
  end

  @doc """
  Retrieve a list of price lists
  The price lists register can return a list of records or a single record. By specifying a Code in the URL, a single record will be returned. Not specifying a Code will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceListList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_price_lists_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.PriceListList.t} | {:error, Tesla.Env.t}
  def list_price_lists_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/pricelists")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceListList{}}
    ])
  end

  @doc """
  Update a price list

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `code` (String.t): identifies the price list
  - `opts` (keyword): Optional parameters
    - `:body` (PriceListWrap): price list to update

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceListWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_price_lists_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.PriceListWrap.t} | {:error, Tesla.Env.t}
  def update_price_lists_resource(connection, code, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/pricelists/#{code}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceListWrap{}}
    ])
  end
end
