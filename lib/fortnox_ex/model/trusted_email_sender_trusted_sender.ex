# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.TrustedEmailSenderTrustedSender do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Id,
    :Email
  ]

  @type t :: %__MODULE__{
    :Id => integer() | nil,
    :Email => String.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.TrustedEmailSenderTrustedSender do
  def decode(value, _options) do
    value
  end
end

