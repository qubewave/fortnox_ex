# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PriceList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :Code,
    :Description,
    :Comments,
    :PreSelected
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :Code => String.t,
    :Description => String.t,
    :Comments => String.t | nil,
    :PreSelected => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PriceList do
  def decode(value, _options) do
    value
  end
end
