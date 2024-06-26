# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.SupplierInvoicesResource do
  @moduledoc """
  API calls for all endpoints tagged `SupplierInvoicesResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Approval of bookkeep of given supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec approvalbookkeep(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def approvalbookkeep(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}/approvalbookkeep")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Approval of payment of given supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec approvalpayment(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def approvalpayment(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}/approvalpayment")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Bookkeep given supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookkeep_supplier_invoices_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def bookkeep_supplier_invoices_resource(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}/bookkeep")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Cancels given supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec cancel_supplier_invoices_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def cancel_supplier_invoices_resource(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}/cancel")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Create a supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoiceWrap): supplier invoice to create

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_supplier_invoices_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def create_supplier_invoices_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/supplierinvoices/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Credit given supplier invoice
  The created credit invoice will be referenced in the property CreditReference.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec credit_supplier_invoices_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def credit_supplier_invoices_resource(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}/credit")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Retrieve a single supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_supplier_invoices_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def get_supplier_invoices_resource(connection, given_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/supplierinvoices/#{given_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end

  @doc """
  Retrieve a list of supplier invoices

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:filter` (String.t): possibility to filter supplier invoices

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceListItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_supplier_invoices_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceListItemWrap.t} | {:error, Tesla.Env.t}
  def list_supplier_invoices_resource(connection, opts \\ []) do
    optional_params = %{
      :filter => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/supplierinvoices/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceListItemWrap{}}
    ])
  end

  @doc """
  Update a supplier invoice

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `given_number` (integer()): identifies the invoice
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoiceWrap): supplier invoice to update

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoiceWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_supplier_invoices_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoiceWrap.t} | {:error, Tesla.Env.t}
  def update_supplier_invoices_resource(connection, given_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/supplierinvoices/#{given_number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoiceWrap{}}
    ])
  end
end
