# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.PurchaseOrderResource do
  @moduledoc """
  API calls for all endpoints tagged `PurchaseOrderResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Update response states

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:ids` ([integer()]): List of purchase order ids.
    - `:body` (ResponseStateChange): The new response state.

  ### Returns

  - `{:ok, [%PurchaseOrder{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec batch_update_response_state(Tesla.Env.client, keyword()) :: {:ok, list(FortnoxEx.Model.PurchaseOrder.t)} | {:error, Tesla.Env.t}
  def batch_update_response_state(connection, opts \\ []) do
    optional_params = %{
      :ids => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/response")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%FortnoxEx.Model.PurchaseOrder{}]}
    ])
  end

  @doc """
  Create Purchase Order

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (PurchaseOrder): <code>PurchaseOrder</code> document.

  ### Returns

  - `{:ok, FortnoxEx.Model.PurchaseOrder.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_purchase_order_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.PurchaseOrder.t} | {:error, Tesla.Env.t}
  def create_purchase_order_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/api/warehouse/purchaseorders-v1")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PurchaseOrder{}}
    ])
  end

  @doc """
  Get Purchase Order

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters
    - `:ignore_incoming_goods_id` (integer()): used for calculating the remaining ordered quantity. null will take the received quantity from all incoming goods

  ### Returns

  - `{:ok, FortnoxEx.Model.PurchaseOrder.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.PurchaseOrder.t} | {:error, Tesla.Env.t}
  def get(connection, id, opts \\ []) do
    optional_params = %{
      :ignoreIncomingGoodsId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/purchaseorders-v1/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PurchaseOrder{}}
    ])
  end

  @doc """
  List Purchase Orders
  <p>      List purchase orders matching the given parameters.  </p>  <p>      Sortable fields:      <code>id</code>,      <code>supplier_number</code>,      <code>order_date</code>,      <code>internal_reference</code>,      <code>response_state</code>,      <code>delivery_date</code>  </p>

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:q` (String.t): Include only documents where `id` or `internalReference`-field contains the given text (case-insensitive).
    - `:supplier_number` (String.t): Include only documents with the given `supplierNumber`.
    - `:state` (String.t): Include only documents with the given `purchaseOrderState`.
    - `:item_id` (String.t): Include only documents with the given `itemId`.
    - `:purchase_type` (String.t): Include only documents with the given `purchaseType`
    - `:internal_reference` (String.t): Include only documents where `internalReference' contains the given text (case-insensitive).
    - `:note` (String.t): Include only documents where `note`-field contains the given text (case-insensitive).

  ### Returns

  - `{:ok, [%PurchaseOrder{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_all_purchase_order_resource(Tesla.Env.client, keyword()) :: {:ok, list(FortnoxEx.Model.PurchaseOrder.t)} | {:error, Tesla.Env.t}
  def get_all_purchase_order_resource(connection, opts \\ []) do
    optional_params = %{
      :q => :query,
      :supplierNumber => :query,
      :state => :query,
      :itemId => :query,
      :purchaseType => :query,
      :internalReference => :query,
      :note => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/purchaseorders-v1")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%FortnoxEx.Model.PurchaseOrder{}]}
    ])
  end

  @doc """
  Get notes
  Get notes for a purchase order.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%PurchaseOrderRowNote{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_attached_notes(Tesla.Env.client, integer(), keyword()) :: {:ok, list(FortnoxEx.Model.PurchaseOrderRowNote.t)} | {:error, Tesla.Env.t}
  def get_attached_notes(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/notes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%FortnoxEx.Model.PurchaseOrderRowNote{}]}
    ])
  end

  @doc """
  Get CSV list of Purchase Orders

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:q` (String.t): Include only documents where `id` or `internalReference`-field contains the given text (case-insensitive).
    - `:supplier_number` (String.t): Include only documents with the given `supplierNumber`.
    - `:state` (String.t): Include only documents with the given `purchaseOrderState`.
    - `:item_id` (String.t): Include only documents with the given `itemId`.
    - `:purchase_type` (String.t): Include only documents with the given `purchaseType`
    - `:internal_reference` (String.t): Include only documents where `internalReference' contains the given text (case-insensitive).
    - `:note` (String.t): Include only documents where `note`-field contains the given text (case-insensitive).
    - `:show_purchase_type_column` (boolean()): True to include the purchase type column, default is false.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_csv_report(Tesla.Env.client, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def get_csv_report(connection, opts \\ []) do
    optional_params = %{
      :q => :query,
      :supplierNumber => :query,
      :state => :query,
      :itemId => :query,
      :purchaseType => :query,
      :internalReference => :query,
      :note => :query,
      :showPurchaseTypeColumn => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/purchaseorders-v1/csv")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  List matched documents
  Get a list of <code>DocumentReference</code> of linked/connected purchase orders to incoming goods and/or invoice document.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%DocumentReference{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_matched_documents(Tesla.Env.client, integer(), keyword()) :: {:ok, list(FortnoxEx.Model.DocumentReference.t)} | {:error, Tesla.Env.t}
  def get_matched_documents(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/matches")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%FortnoxEx.Model.DocumentReference{}]}
    ])
  end

  @doc """
  Send purchase order via email
  Sends the purchase order with the specified <code>id</code> to the recipient and sets the purchase order state to SENT

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters
    - `:body` (PurchaseOrderMailSettings): see <code>PurchaseOrderMailSettings</code>

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_purchase_order(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_purchase_order(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/send")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Sends multiple purchase orders via email

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` ([integer()]): List of Purchase order ids.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_purchase_orders(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_purchase_orders(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/api/warehouse/purchaseorders-v1/sendpurchaseorders")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Manually complete dropship order
  The dropship order will be treated as fully received.  Any remaining quantity will be ignored.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ReleaseParentOrder.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec set_dropship_manually_completed(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ReleaseParentOrder.t} | {:error, Tesla.Env.t}
  def set_dropship_manually_completed(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/dropshipcomplete")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ReleaseParentOrder{}}
    ])
  end

  @doc """
  Manually complete Purchase Order
  The purchase order will be treated as fully received.  Any remaining quantity will be ignored.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec set_manually_completed(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def set_manually_completed(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/complete")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update Purchase Order

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters
    - `:body` (PurchaseOrder): The <code>PurchaseOrder</code> document.

  ### Returns

  - `{:ok, FortnoxEx.Model.PurchaseOrder.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_purchase_order_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.PurchaseOrder.t} | {:error, Tesla.Env.t}
  def update_purchase_order_resource(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PurchaseOrder{}}
    ])
  end

  @doc """
  Update response state

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters
    - `:body` (ResponseStateChange): The new response state.

  ### Returns

  - `{:ok, FortnoxEx.Model.PurchaseOrder.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_response_state(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.PurchaseOrder.t} | {:error, Tesla.Env.t}
  def update_response_state(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/response")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.PurchaseOrder{}}
    ])
  end

  @doc """
  Void Purchase Order

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `id` (integer()): Purchase order id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec void_document(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def void_document(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/api/warehouse/purchaseorders-v1/#{id}/void")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end
end