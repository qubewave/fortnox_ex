# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.History do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Id,
    :Date,
    :EventId,
    :Amount,
    :UserId,
    :UserName,
    :Notes,
    :VoucherNumber,
    :VoucherSeries,
    :VoucherYear,
    :SupplierInvoice
  ]

  @type t :: %__MODULE__{
    :Id => integer() | nil,
    :Date => String.t | nil,
    :EventId => integer() | nil,
    :Amount => String.t | nil,
    :UserId => integer() | nil,
    :UserName => String.t | nil,
    :Notes => String.t | nil,
    :VoucherNumber => integer() | nil,
    :VoucherSeries => String.t | nil,
    :VoucherYear => integer() | nil,
    :SupplierInvoice => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.History do
  def decode(value, _options) do
    value
  end
end

