# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.MetaInformation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@TotalResources,
    :@TotalPages,
    :@CurrentPage
  ]

  @type t :: %__MODULE__{
    :@TotalResources => integer() | nil,
    :@TotalPages => integer() | nil,
    :@CurrentPage => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.MetaInformation do
  def decode(value, _options) do
    value
  end
end
