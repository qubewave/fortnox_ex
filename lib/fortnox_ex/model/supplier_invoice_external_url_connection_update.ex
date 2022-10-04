# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :SupplierInvoiceNumber,
    :ExternalURLConnection
  ]

  @type t :: %__MODULE__{
    :SupplierInvoiceNumber => integer() | nil,
    :ExternalURLConnection => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceExternalUrlConnectionUpdate do
  def decode(value, _options) do
    value
  end
end

