# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoicePaymentListItemList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :SupplierInvoicePayments
  ]

  @type t :: %__MODULE__{
    :SupplierInvoicePayments => [FortnoxEx.Model.SupplierInvoicePaymentListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoicePaymentListItemList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:SupplierInvoicePayments, :list, FortnoxEx.Model.SupplierInvoicePaymentListItem, options)
  end
end
