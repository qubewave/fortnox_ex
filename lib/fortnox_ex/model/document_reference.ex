# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.DocumentReference do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :id
  ]

  @type t :: %__MODULE__{
    :type => String.t | nil,
    :id => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.DocumentReference do
  def decode(value, _options) do
    value
  end
end

