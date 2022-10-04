# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Attachment do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :entityId,
    :entityType,
    :fileId,
    :includeOnSend
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :entityId => integer() | nil,
    :entityType => String.t | nil,
    :fileId => String.t | nil,
    :includeOnSend => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Attachment do
  def decode(value, _options) do
    value
  end
end

