# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.FolderWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Folder
  ]

  @type t :: %__MODULE__{
    :Folder => FortnoxEx.Model.Folder.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.FolderWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Folder, :struct, FortnoxEx.Model.Folder, options)
  end
end

