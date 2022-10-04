# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.OrderListItemList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Orders
  ]

  @type t :: %__MODULE__{
    :Orders => [FortnoxEx.Model.OrderListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.OrderListItemList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Orders, :list, FortnoxEx.Model.OrderListItem, options)
  end
end
