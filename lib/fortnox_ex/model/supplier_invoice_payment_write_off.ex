# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoicePaymentWriteOff do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Amount,
    :AccountNumber,
    :CostCenter,
    :Currency,
    :Description,
    :TransactionInformation,
    :Project
  ]

  @type t :: %__MODULE__{
    :Amount => float() | nil,
    :AccountNumber => integer() | nil,
    :CostCenter => String.t | nil,
    :Currency => String.t | nil,
    :Description => String.t | nil,
    :TransactionInformation => String.t | nil,
    :Project => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoicePaymentWriteOff do
  def decode(value, _options) do
    value
  end
end

