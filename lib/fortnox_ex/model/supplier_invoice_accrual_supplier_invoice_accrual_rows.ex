# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceAccrualSupplierInvoiceAccrualRows do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Account,
    :CostCenter,
    :Credit,
    :Debit,
    :Project,
    :TransactionInformation
  ]

  @type t :: %__MODULE__{
    :Account => integer() | nil,
    :CostCenter => String.t | nil,
    :Credit => float() | nil,
    :Debit => float() | nil,
    :Project => String.t | nil,
    :TransactionInformation => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceAccrualSupplierInvoiceAccrualRows do
  def decode(value, _options) do
    value
  end
end

