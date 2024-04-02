# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ArticleRegistration do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :totalQuantity,
    :unitCost,
    :unitPrice,
    :orderIndex,
    :item,
    :invoiceText,
    :note,
    :timeLocked,
    :invoiceBasisId,
    :nonInvoiceable,
    :documentId,
    :documentType,
    :ownerId,
    :createdBy,
    :createdTime
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :totalQuantity => float() | nil,
    :unitCost => float() | nil,
    :unitPrice => float() | nil,
    :orderIndex => integer() | nil,
    :item => FortnoxEx.Model.TrItem.t | nil,
    :invoiceText => String.t | nil,
    :note => String.t | nil,
    :timeLocked => boolean() | nil,
    :invoiceBasisId => integer() | nil,
    :nonInvoiceable => boolean() | nil,
    :documentId => integer() | nil,
    :documentType => String.t | nil,
    :ownerId => String.t | nil,
    :createdBy => String.t | nil,
    :createdTime => DateTime.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ArticleRegistration do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:item, :struct, FortnoxEx.Model.TrItem, options)
  end
end

