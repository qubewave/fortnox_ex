# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.AccountPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Active,
    :BalanceBroughtForward,
    :CostCenter,
    :CostCenterSettings,
    :Description,
    :Number,
    :Project,
    :ProjectSettings,
    :SRU,
    :TransactionInformation,
    :TransactionInformationSettings,
    :VATCode,
    :OpeningQuantities
  ]

  @type t :: %__MODULE__{
    :Active => boolean() | nil,
    :BalanceBroughtForward => float() | nil,
    :CostCenter => String.t | nil,
    :CostCenterSettings => String.t | nil,
    :Description => String.t,
    :Number => integer(),
    :Project => String.t | nil,
    :ProjectSettings => String.t | nil,
    :SRU => integer() | nil,
    :TransactionInformation => String.t | nil,
    :TransactionInformationSettings => String.t | nil,
    :VATCode => String.t | nil,
    :OpeningQuantities => [FortnoxEx.Model.AccountPayloadOpeningQuantities.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.AccountPayload do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:OpeningQuantities, :list, FortnoxEx.Model.AccountPayloadOpeningQuantities, options)
  end
end

