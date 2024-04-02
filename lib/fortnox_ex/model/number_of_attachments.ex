# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.NumberOfAttachments do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entityId,
    :numberOfAttachments
  ]

  @type t :: %__MODULE__{
    :entityId => integer(),
    :numberOfAttachments => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.NumberOfAttachments do
  def decode(value, _options) do
    value
  end
end

