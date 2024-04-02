# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SupplierInvoiceFileConnection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :FileId,
    :Name,
    :SupplierInvoiceNumber,
    :SupplierName
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :FileId => String.t | nil,
    :Name => String.t | nil,
    :SupplierInvoiceNumber => String.t | nil,
    :SupplierName => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SupplierInvoiceFileConnection do
  def decode(value, _options) do
    value
  end
end

