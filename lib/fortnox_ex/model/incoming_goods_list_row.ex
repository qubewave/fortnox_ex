# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.IncomingGoodsListRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :hasDeliveryNote,
    :deliveryNoteId,
    :supplierNumber,
    :date,
    :note,
    :voided,
    :completed,
    :released,
    :stockPointId,
    :supplierName,
    :unmatchedValue
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :hasDeliveryNote => boolean() | nil,
    :deliveryNoteId => String.t | nil,
    :supplierNumber => String.t | nil,
    :date => Date.t | nil,
    :note => String.t | nil,
    :voided => boolean() | nil,
    :completed => boolean() | nil,
    :released => boolean() | nil,
    :stockPointId => String.t | nil,
    :supplierName => String.t | nil,
    :unmatchedValue => float() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.IncomingGoodsListRow do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:date, :date, nil, options)
  end
end

