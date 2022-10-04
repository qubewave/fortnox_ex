# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceAccrual do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :AccrualAccount,
    :CostAccount,
    :Description,
    :EndDate,
    :SupplierInvoiceNumber,
    :Period,
    :StartDate,
    :Times,
    :Total,
    :VATIncluded,
    :SupplierInvoiceAccrualRows
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :AccrualAccount => integer(),
    :CostAccount => integer(),
    :Description => String.t | nil,
    :EndDate => Date.t,
    :SupplierInvoiceNumber => integer(),
    :Period => String.t,
    :StartDate => Date.t,
    :Times => integer(),
    :Total => float(),
    :VATIncluded => boolean() | nil,
    :SupplierInvoiceAccrualRows => [FortnoxEx.Model.SupplierInvoiceAccrualSupplierInvoiceAccrualRows.t]
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceAccrual do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:EndDate, :date, nil, options)
    |> deserialize(:StartDate, :date, nil, options)
    |> deserialize(:SupplierInvoiceAccrualRows, :list, FortnoxEx.Model.SupplierInvoiceAccrualSupplierInvoiceAccrualRows, options)
  end
end
