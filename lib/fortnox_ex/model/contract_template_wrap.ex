# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ContractTemplateWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ContractTemplate
  ]

  @type t :: %__MODULE__{
    :ContractTemplate => FortnoxEx.Model.ContractTemplate.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ContractTemplateWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:ContractTemplate, :struct, FortnoxEx.Model.ContractTemplate, options)
  end
end
