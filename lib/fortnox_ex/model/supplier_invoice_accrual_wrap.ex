# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceAccrualWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :SupplierInvoiceAccrual
  ]

  @type t :: %__MODULE__{
    :SupplierInvoiceAccrual => FortnoxEx.Model.SupplierInvoiceAccrual.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceAccrualWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:SupplierInvoiceAccrual, :struct, FortnoxEx.Model.SupplierInvoiceAccrual, options)
  end
end

