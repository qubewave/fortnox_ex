# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.SellWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Asset
  ]

  @type t :: %__MODULE__{
    :Asset => FortnoxEx.Model.Sell.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.SellWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Asset, :struct, FortnoxEx.Model.Sell, options)
  end
end

