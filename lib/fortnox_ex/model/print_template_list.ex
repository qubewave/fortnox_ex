# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.PrintTemplateList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :PrintTemplates
  ]

  @type t :: %__MODULE__{
    :PrintTemplates => [FortnoxEx.Model.PrintTemplate.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.PrintTemplateList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:PrintTemplates, :list, FortnoxEx.Model.PrintTemplate, options)
  end
end

