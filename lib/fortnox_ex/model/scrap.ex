# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Scrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Percentage,
    :Comment,
    :Date
  ]

  @type t :: %__MODULE__{
    :Percentage => integer() | nil,
    :Comment => String.t | nil,
    :Date => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Scrap do
  def decode(value, _options) do
    value
  end
end

