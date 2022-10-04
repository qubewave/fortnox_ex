# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.SupplierInvoicePaymentsResource do
  @moduledoc """
  API calls for all endpoints tagged `SupplierInvoicePaymentsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Bookkeep a supplier invoice payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the supplier invoice payment
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookkeep_supplier_invoice_payments_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t} | {:error, Tesla.Env.t}
  def bookkeep_supplier_invoice_payments_resource(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/3/supplierinvoicepayments/#{number}/bookkeep")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoicePaymentWrap{}}
    ])
  end

  @doc """
  Create a supplier invoice payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoicePaymentWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_supplier_invoice_payments_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t} | {:error, Tesla.Env.t}
  def create_supplier_invoice_payments_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/3/supplierinvoicepayments/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoicePaymentWrap{}}
    ])
  end

  @doc """
  Retrieve a single supplier invoice payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the supplier invoice payment
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_supplier_invoice_payments_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t} | {:error, Tesla.Env.t}
  def get_supplier_invoice_payments_resource(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/supplierinvoicepayments/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoicePaymentWrap{}}
    ])
  end

  @doc """
  Retrieve a list of supplier invoice payments

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoicePaymentListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_supplier_invoice_payments_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoicePaymentListItemList.t} | {:error, Tesla.Env.t}
  def list_supplier_invoice_payments_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/3/supplierinvoicepayments/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoicePaymentListItemList{}}
    ])
  end

  @doc """
  Remove a supplier invoice payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the supplier invoice payment
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_supplier_invoice_payments_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_supplier_invoice_payments_resource(connection, number, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/3/supplierinvoicepayments/#{number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a supplier invoice payment

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `number` (integer()): identifies the supplier invoice payment
  - `opts` (keyword): Optional parameters
    - `:body` (SupplierInvoicePaymentWrap): to update

  ### Returns

  - `{:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_supplier_invoice_payments_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.SupplierInvoicePaymentWrap.t} | {:error, Tesla.Env.t}
  def update_supplier_invoice_payments_resource(connection, number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/3/supplierinvoicepayments/#{number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.SupplierInvoicePaymentWrap{}}
    ])
  end
end