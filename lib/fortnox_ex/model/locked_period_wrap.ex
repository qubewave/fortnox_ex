# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.LockedPeriodWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :LockedPeriod
  ]

  @type t :: %__MODULE__{
    :LockedPeriod => FortnoxEx.Model.LockedPeriod.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.LockedPeriodWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:LockedPeriod, :struct, FortnoxEx.Model.LockedPeriod, options)
  end
end
