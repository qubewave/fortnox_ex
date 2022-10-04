# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.Asset do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :@url,
    :Id,
    :Number,
    :Description,
    :Status,
    :StatusId,
    :CostCenter,
    :Project,
    :Type,
    :TypeId,
    :DepreciationMethod,
    :AcquisitionValue,
    :DepreciateToResidualValue,
    :AcquisitionDate,
    :AcquisitionStart,
    :DepreciationFinal,
    :DepreciatedTo,
    :ManualOb,
    :Notes,
    :Reference,
    :Brand,
    :InsuredNumber,
    :InsuredWith,
    :Group,
    :Room,
    :Placement,
    :Department,
    :History
  ]

  @type t :: %__MODULE__{
    :@url => String.t | nil,
    :Id => integer() | nil,
    :Number => String.t | nil,
    :Description => String.t | nil,
    :Status => String.t | nil,
    :StatusId => String.t | nil,
    :CostCenter => String.t | nil,
    :Project => String.t | nil,
    :Type => String.t | nil,
    :TypeId => integer() | nil,
    :DepreciationMethod => integer() | nil,
    :AcquisitionValue => integer() | nil,
    :DepreciateToResidualValue => integer() | nil,
    :AcquisitionDate => String.t | nil,
    :AcquisitionStart => String.t | nil,
    :DepreciationFinal => String.t | nil,
    :DepreciatedTo => String.t | nil,
    :ManualOb => integer() | nil,
    :Notes => String.t | nil,
    :Reference => String.t | nil,
    :Brand => String.t | nil,
    :InsuredNumber => String.t | nil,
    :InsuredWith => String.t | nil,
    :Group => String.t | nil,
    :Room => String.t | nil,
    :Placement => String.t | nil,
    :Department => String.t | nil,
    :History => [FortnoxEx.Model.History.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.Asset do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:History, :list, FortnoxEx.Model.History, options)
  end
end

