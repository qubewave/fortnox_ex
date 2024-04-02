# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Folder do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Email,
    :Files,
    :Folders,
    :Id,
    :Name
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Email => String.t | nil,
    :Files => [FortnoxEx.Model.FolderFileRow.t] | nil,
    :Folders => [FortnoxEx.Model.FolderFolderRow.t] | nil,
    :Id => String.t | nil,
    :Name => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Folder do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Files, :list, FortnoxEx.Model.FolderFileRow, options)
    |> deserialize(:Folders, :list, FortnoxEx.Model.FolderFolderRow, options)
  end
end

