# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.EuVatLimitRegulationWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :EUVatLimitRegulation
  ]

  @type t :: %__MODULE__{
    :EUVatLimitRegulation => FortnoxEx.Model.EuVatLimitRegulation.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.EuVatLimitRegulationWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:EUVatLimitRegulation, :struct, FortnoxEx.Model.EuVatLimitRegulation, options)
  end
end

