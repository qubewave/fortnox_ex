# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PurchaseOrderRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :purchaseOrderId,
    :itemId,
    :orderedQuantity,
    :itemDescription,
    :itemUnit,
    :rowNum,
    :projectId,
    :costCenterCode,
    :remainingOrderedQuantity,
    :currencyCode,
    :price,
    :receivedQuantity,
    :backOrderQuantity,
    :stockPointId,
    :stockLocationId,
    :stockPointCode,
    :stockPointName,
    :stockLocationCode,
    :stockLocationName,
    :isStockItem,
    :notes
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :purchaseOrderId => integer() | nil,
    :itemId => String.t,
    :orderedQuantity => float(),
    :itemDescription => String.t | nil,
    :itemUnit => String.t | nil,
    :rowNum => integer() | nil,
    :projectId => String.t | nil,
    :costCenterCode => String.t | nil,
    :remainingOrderedQuantity => float(),
    :currencyCode => String.t,
    :price => float() | nil,
    :receivedQuantity => float() | nil,
    :backOrderQuantity => float() | nil,
    :stockPointId => String.t | nil,
    :stockLocationId => String.t | nil,
    :stockPointCode => String.t | nil,
    :stockPointName => String.t | nil,
    :stockLocationCode => String.t | nil,
    :stockLocationName => String.t | nil,
    :isStockItem => boolean() | nil,
    :notes => [FortnoxEx.Model.PurchaseOrderRowNote.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PurchaseOrderRow do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:notes, :list, FortnoxEx.Model.PurchaseOrderRowNote, options)
  end
end

