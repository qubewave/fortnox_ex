# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.FolderFolderRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Id,
    :Name
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Id => String.t | nil,
    :Name => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.FolderFolderRow do
  def decode(value, _options) do
    value
  end
end

