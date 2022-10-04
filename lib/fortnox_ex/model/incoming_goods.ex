# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.IncomingGoods do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :hasDeliveryNote,
    :deliveryNoteId,
    :supplierNumber,
    :rows,
    :date,
    :released,
    :note,
    :completed,
    :stockPointId,
    :stockPointCode,
    :stockPointName,
    :voided,
    :projectId,
    :costCenterCode,
    :supplierName
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :hasDeliveryNote => boolean() | nil,
    :deliveryNoteId => String.t,
    :supplierNumber => String.t | nil,
    :rows => [FortnoxEx.Model.IncomingGoodsRow.t] | nil,
    :date => Date.t | nil,
    :released => boolean() | nil,
    :note => String.t | nil,
    :completed => boolean() | nil,
    :stockPointId => String.t | nil,
    :stockPointCode => String.t | nil,
    :stockPointName => String.t | nil,
    :voided => boolean() | nil,
    :projectId => String.t | nil,
    :costCenterCode => String.t | nil,
    :supplierName => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.IncomingGoods do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:rows, :list, FortnoxEx.Model.IncomingGoodsRow, options)
    |> deserialize(:date, :date, nil, options)
  end
end

