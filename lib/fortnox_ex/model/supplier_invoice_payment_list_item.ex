# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoicePaymentListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :Amount,
    :Booked,
    :Currency,
    :CurrencyRate,
    :CurrencyUnit,
    :InvoiceNumber,
    :Number,
    :PaymentDate,
    :Source
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :Amount => float() | nil,
    :Booked => boolean() | nil,
    :Currency => String.t | nil,
    :CurrencyRate => float() | nil,
    :CurrencyUnit => float() | nil,
    :InvoiceNumber => String.t,
    :Number => integer() | nil,
    :PaymentDate => Date.t | nil,
    :Source => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoicePaymentListItem do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:PaymentDate, :date, nil, options)
  end
end
