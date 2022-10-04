# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CustomOutboundDocumentRow do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :rowId,
    :itemId,
    :reservedQuantity,
    :deliveredQuantity,
    :stockPointId,
    :stockLocationId,
    :costCenterCode,
    :projectId,
    :itemDescription,
    :itemUnit,
    :forcedQuantity,
    :quantity
  ]

  @type t :: %__MODULE__{
    :rowId => integer() | nil,
    :itemId => String.t,
    :reservedQuantity => float() | nil,
    :deliveredQuantity => float() | nil,
    :stockPointId => String.t | nil,
    :stockLocationId => String.t | nil,
    :costCenterCode => String.t | nil,
    :projectId => String.t | nil,
    :itemDescription => String.t | nil,
    :itemUnit => String.t | nil,
    :forcedQuantity => float() | nil,
    :quantity => float()
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CustomOutboundDocumentRow do
  def decode(value, _options) do
    value
  end
end

