# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ReleaseParentOrder do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :releasedParentOrder
  ]

  @type t :: %__MODULE__{
    :releasedParentOrder => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ReleaseParentOrder do
  def decode(value, _options) do
    value
  end
end

