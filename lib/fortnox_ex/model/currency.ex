# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Currency do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :currency,
    :rate,
    :unit
  ]

  @type t :: %__MODULE__{
    :currency => String.t,
    :rate => float(),
    :unit => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Currency do
  def decode(value, _options) do
    value
  end
end

