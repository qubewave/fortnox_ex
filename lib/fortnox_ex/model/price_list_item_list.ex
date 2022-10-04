# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PriceListItemList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Prices
  ]

  @type t :: %__MODULE__{
    :Prices => [FortnoxEx.Model.PriceListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PriceListItemList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Prices, :list, FortnoxEx.Model.PriceListItem, options)
  end
end

