# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.PricesResource do
  @moduledoc """
  API calls for all endpoints tagged `PricesResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a price

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (PriceWrap): price to create

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_prices_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.PriceWrap.t} | {:error, Tesla.Env.t}
  def create_prices_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/prices/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceWrap{}}
    ])
  end

  @doc """
  Retrieve the first price for the specified article

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list
  - `article_number` (String.t): identifies the article
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_first_price(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FortnoxEx.Model.PriceWrap.t} | {:error, Tesla.Env.t}
  def get_first_price(connection, price_list, article_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/prices/#{price_list}/#{article_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceWrap{}}
    ])
  end

  @doc """
  Retrieve a price for a specified article

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list
  - `article_number` (String.t): identifies the article
  - `from_quantity` (float()): identifies from quantity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_prices_resource(Tesla.Env.client, String.t, String.t, float(), keyword()) :: {:ok, FortnoxEx.Model.PriceWrap.t} | {:error, Tesla.Env.t}
  def get_prices_resource(connection, price_list, article_number, from_quantity, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/prices/#{price_list}/#{article_number}/#{from_quantity}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceWrap{}}
    ])
  end

  @doc """
  Retrieve a list of articles with all their prices in the specified price list
  The list contains a slimmer version of the prices. To get a full entity, use the GET with a price list, article number and from quantity.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list of the prices
  - `article_number` (String.t): identifies the article number of the prices
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_prices_resource(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FortnoxEx.Model.PriceListItemList.t} | {:error, Tesla.Env.t}
  def list_prices_resource(connection, price_list, article_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/prices/sublist/#{price_list}/#{article_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceListItemList{}}
    ])
  end

  @doc """
  Delete a single price

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list
  - `article_number` (String.t): identifies the article number
  - `from_quantity` (float()): identifies the from quantity
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_prices_resource(Tesla.Env.client, String.t, String.t, float(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_prices_resource(connection, price_list, article_number, from_quantity, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/prices/#{price_list}/#{article_number}/#{from_quantity}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a price

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list
  - `article_number` (String.t): identifies the article number
  - `from_quantity` (float()): identifies the from quantity
  - `opts` (keyword): Optional parameters
    - `:body` (PriceWrap): price to update

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_prices_resource(Tesla.Env.client, String.t, String.t, float(), keyword()) :: {:ok, FortnoxEx.Model.PriceWrap.t} | {:error, Tesla.Env.t}
  def update_prices_resource(connection, price_list, article_number, from_quantity, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/prices/#{price_list}/#{article_number}/#{from_quantity}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceWrap{}}
    ])
  end

  @doc """
  Update the first price in the specified article

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `price_list` (String.t): identifies the price list
  - `article_number` (String.t): identifies the article number
  - `opts` (keyword): Optional parameters
    - `:body` (PriceWrap): price to update

  ### Returns

  - `{:ok, FortnoxEx.Model.PriceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_prices_resource1(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, FortnoxEx.Model.PriceWrap.t} | {:error, Tesla.Env.t}
  def update_prices_resource1(connection, price_list, article_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/prices/#{price_list}/#{article_number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PriceWrap{}}
    ])
  end
end
