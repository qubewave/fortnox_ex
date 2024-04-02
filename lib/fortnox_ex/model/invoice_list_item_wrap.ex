# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.InvoiceListItemWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Invoices
  ]

  @type t :: %__MODULE__{
    :Invoices => [FortnoxEx.Model.InvoiceListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.InvoiceListItemWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Invoices, :list, FortnoxEx.Model.InvoiceListItem, options)
  end
end

