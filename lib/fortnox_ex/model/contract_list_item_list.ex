# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ContractListItemList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Contracts
  ]

  @type t :: %__MODULE__{
    :Contracts => [FortnoxEx.Model.ContractListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ContractListItemList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Contracts, :list, FortnoxEx.Model.ContractListItem, options)
  end
end

