# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.InvoiceWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Invoice
  ]

  @type t :: %__MODULE__{
    :Invoice => FortnoxEx.Model.Invoice.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.InvoiceWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Invoice, :struct, FortnoxEx.Model.Invoice, options)
  end
end

