# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.WayOfDeliveryList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :WayOfDeliveries
  ]

  @type t :: %__MODULE__{
    :WayOfDeliveries => [FortnoxEx.Model.WayOfDelivery.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.WayOfDeliveryList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:WayOfDeliveries, :list, FortnoxEx.Model.WayOfDelivery, options)
  end
end

