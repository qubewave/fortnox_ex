# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.AssetType do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Id,
    :Number,
    :Description,
    :Notes,
    :Type,
    :InUse,
    :AccountAssetId,
    :AccountValueLossId,
    :AccountSaleLossId,
    :AccountSaleWinId,
    :AccountRevaluationId,
    :AccountWriteDownAckId,
    :AccountWriteDownId,
    :AccountDepreciationId,
    :AccountAsset,
    :AccountValueLoss,
    :AccountSaleLoss,
    :AccountSaleWin,
    :AccountRevaluation,
    :AccountWriteDownAck,
    :AccountWriteDown,
    :AccountDepreciation
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Id => integer() | nil,
    :Number => String.t | nil,
    :Description => String.t | nil,
    :Notes => String.t | nil,
    :Type => integer() | nil,
    :InUse => boolean() | nil,
    :AccountAssetId => integer() | nil,
    :AccountValueLossId => integer() | nil,
    :AccountSaleLossId => integer() | nil,
    :AccountSaleWinId => integer() | nil,
    :AccountRevaluationId => integer() | nil,
    :AccountWriteDownAckId => integer() | nil,
    :AccountWriteDownId => integer() | nil,
    :AccountDepreciationId => integer() | nil,
    :AccountAsset => integer() | nil,
    :AccountValueLoss => integer() | nil,
    :AccountSaleLoss => integer() | nil,
    :AccountSaleWin => integer() | nil,
    :AccountRevaluation => integer() | nil,
    :AccountWriteDownAck => integer() | nil,
    :AccountWriteDown => integer() | nil,
    :AccountDepreciation => integer() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.AssetType do
  def decode(value, _options) do
    value
  end
end

