# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.CustomerReferencesResource do
  @moduledoc """
  API calls for all endpoints tagged `CustomerReferencesResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a customer reference row
  </p>  <p>The created customer reference row will be returned if everything succeeded, if there was any problems an error will be returned.</p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CustomerReferenceCustomerReferenceRowWrap): customer reference row to create

  ### Returns

  - `{:ok, FortnoxEx.Model.CustomerReferenceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_customer_references_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.CustomerReferenceWrap.t} | {:error, Tesla.Env.t}
  def create_customer_references_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/customerreferences/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CustomerReferenceWrap{}}
    ])
  end

  @doc """
  Retrieve a customer reference row
  </p>  <p>You need to supply the unique customer reference row id that was returned when the customer reference row was created or retrieved from the list of customer reference rows.</p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `customer_reference_row_id` (String.t): identifies the customer reference row
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.CustomerReferenceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_customer_references_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.CustomerReferenceWrap.t} | {:error, Tesla.Env.t}
  def get_customer_references_resource(connection, customer_reference_row_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/customerreferences/#{customer_reference_row_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CustomerReferenceWrap{}}
    ])
  end

  @doc """
  Retrieve a list of customers reference rows
  </p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:customer` (String.t): possibility to filter by customer number

  ### Returns

  - `{:ok, FortnoxEx.Model.CustomerReferenceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_customer_references_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.CustomerReferenceWrap.t} | {:error, Tesla.Env.t}
  def list_customer_references_resource(connection, opts \\ []) do
    optional_params = %{
      :customer => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/customerreferences/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CustomerReferenceWrap{}}
    ])
  end

  @doc """
  Delete a customer reference row
  </p>  <p>Deletes the customer reference row permanently. If everything succeeded the response will be of the type 204, No content and the response body will be empty.</p>  <p>If there was any problems an error will be returned.</p>  <p>You need to supply the unique customer reference row id of the customer reference row that you want to delete.</p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `customer_reference_row_id` (String.t): identifies the customer reference row
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_customer_references_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_customer_references_resource(connection, customer_reference_row_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/customerreferences/#{customer_reference_row_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a customer reference row
  </p>  <p>The updated customer reference row will be returned if everything succeeded, if there was any problems an error will be returned.</p>  <p>You need to supply the unique customer reference row id of the customer reference row that you want to update.</p>  <p>Only the properties provided in the request body will be updated, properties not provided will be left unchanged.</p>  <p>CustomerNumber cannot be changed by this request.</p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `customer_reference_row_id` (String.t): identifies the customer reference row
  - `opts` (keyword): Optional parameters
    - `:body` (CustomerReferenceCustomerReferenceRowWrap): customer reference row to update

  ### Returns

  - `{:ok, FortnoxEx.Model.CustomerWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_customer_references_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.CustomerWrap.t} | {:error, Tesla.Env.t}
  def update_customer_references_resource(connection, customer_reference_row_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/customerreferences/#{customer_reference_row_id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.CustomerWrap{}}
    ])
  end
end
