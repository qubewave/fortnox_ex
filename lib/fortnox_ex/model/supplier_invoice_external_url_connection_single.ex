# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :SupplierInvoiceExternalURLConnection
  ]

  @type t :: %__MODULE__{
    :SupplierInvoiceExternalURLConnection => FortnoxEx.Model.SupplierInvoiceExternalUrlConnection.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionSingle do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:SupplierInvoiceExternalURLConnection, :struct, FortnoxEx.Model.SupplierInvoiceExternalUrlConnection, options)
  end
end

