# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TrustedEmailSenderTrustedSenderWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :TrustedSender
  ]

  @type t :: %__MODULE__{
    :TrustedSender => FortnoxEx.Model.TrustedEmailSenderTrustedSender.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TrustedEmailSenderTrustedSenderWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:TrustedSender, :struct, FortnoxEx.Model.TrustedEmailSenderTrustedSender, options)
  end
end

