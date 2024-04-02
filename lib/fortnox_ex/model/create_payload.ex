# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CreatePayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :InvoiceNumber,
    :SendMethod,
    :Service
  ]

  @type t :: %__MODULE__{
    :InvoiceNumber => String.t,
    :SendMethod => String.t,
    :Service => String.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CreatePayload do
  def decode(value, _options) do
    value
  end
end
