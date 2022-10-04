# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.OrderEmailInformation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :EmailAddressFrom,
    :EmailAddressTo,
    :EmailAddressCC,
    :EmailAddressBCC,
    :EmailSubject,
    :EmailBody
  ]

  @type t :: %__MODULE__{
    :EmailAddressFrom => String.t | nil,
    :EmailAddressTo => String.t | nil,
    :EmailAddressCC => String.t | nil,
    :EmailAddressBCC => String.t | nil,
    :EmailSubject => String.t | nil,
    :EmailBody => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.OrderEmailInformation do
  def decode(value, _options) do
    value
  end
end

