# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PausePayloadWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :NoxFinansInvoice
  ]

  @type t :: %__MODULE__{
    :NoxFinansInvoice => FortnoxEx.Model.PausePayload.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PausePayloadWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:NoxFinansInvoice, :struct, FortnoxEx.Model.PausePayload, options)
  end
end

