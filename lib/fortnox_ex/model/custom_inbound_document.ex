# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomInboundDocument do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :type,
    :date,
    :currency,
    :note,
    :warehouseReady,
    :voided,
    :rows
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :type => String.t | nil,
    :date => Date.t,
    :currency => FortnoxEx.Model.Currency.t | nil,
    :note => String.t | nil,
    :warehouseReady => boolean() | nil,
    :voided => boolean() | nil,
    :rows => [FortnoxEx.Model.CustomInboundDocumentRow.t]
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomInboundDocument do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:date, :date, nil, options)
    |> deserialize(:currency, :struct, FortnoxEx.Model.Currency, options)
    |> deserialize(:rows, :list, FortnoxEx.Model.CustomInboundDocumentRow, options)
  end
end
