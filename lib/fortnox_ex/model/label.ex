# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Label do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Id,
    :Description
  ]

  @type t :: %__MODULE__{
    :Id => integer() | nil,
    :Description => String.t
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Label do
  def decode(value, _options) do
    value
  end
end

