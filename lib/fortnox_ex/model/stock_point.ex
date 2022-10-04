# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.StockPoint do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :code,
    :name,
    :stockLocations,
    :usingCompanyAddress,
    :deliveryName,
    :deliveryAddress,
    :deliveryAddress2,
    :deliveryZipCode,
    :deliveryCity,
    :deliveryPhone,
    :deliveryCountryCode,
    :active
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :code => String.t,
    :name => String.t,
    :stockLocations => [FortnoxEx.Model.StockLocation.t] | nil,
    :usingCompanyAddress => boolean() | nil,
    :deliveryName => String.t | nil,
    :deliveryAddress => String.t | nil,
    :deliveryAddress2 => String.t | nil,
    :deliveryZipCode => String.t | nil,
    :deliveryCity => String.t | nil,
    :deliveryPhone => String.t | nil,
    :deliveryCountryCode => String.t | nil,
    :active => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.StockPoint do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:stockLocations, :list, FortnoxEx.Model.StockLocation, options)
  end
end

