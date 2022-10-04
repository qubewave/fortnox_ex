# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.SupplierInvoiceExternalUrlConnectionsResource do
  @moduledoc """
  API calls for all endpoints tagged `SupplierInvoiceExternalUrlConnectionsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a supplier invoice external URL connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoiceExternalUrlConnectionUpdate): request

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_supplier_invoice_external_url_connections_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t} | {:error, Tesla.Env.t}
  def create_supplier_invoice_external_url_connections_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/supplierinvoiceexternalurlconnections")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle{}}
    ])
  end

  @doc """
  Remove a supplier invoice external URL connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_supplier_invoice_external_url_connections_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_supplier_invoice_external_url_connections_resource(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/3/supplierinvoiceexternalurlconnections/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Retrieve a single supplier invoice external URL connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_supplier_invoice_external_url_connections_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t} | {:error, Tesla.Env.t}
  def get_supplier_invoice_external_url_connections_resource(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/supplierinvoiceexternalurlconnections/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle{}}
    ])
  end

  @doc """
  Update a supplier invoice external URL connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): id
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoiceExternalUrlConnectionUpdate): request

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_supplier_invoice_external_url_connections_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle.t} | {:error, Tesla.Env.t}
  def update_supplier_invoice_external_url_connections_resource(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/supplierinvoiceexternalurlconnections/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle{}}
    ])
  end
end