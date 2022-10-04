# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PriceListList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :PriceLists
  ]

  @type t :: %__MODULE__{
    :PriceLists => [FortnoxEx.Model.PriceList.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PriceListList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:PriceLists, :list, FortnoxEx.Model.PriceList, options)
  end
end

