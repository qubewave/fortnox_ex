# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.AbsenceTransactionPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :EmployeeId,
    :CauseCode,
    :Date,
    :Extent,
    :Hours,
    :HolidayEntitling,
    :CostCenter,
    :Project
  ]

  @type t :: %__MODULE__{
    :EmployeeId => String.t,
    :CauseCode => String.t,
    :Date => Date.t,
    :Extent => float() | nil,
    :Hours => float() | nil,
    :HolidayEntitling => boolean() | nil,
    :CostCenter => String.t | nil,
    :Project => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.AbsenceTransactionPayload do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Date, :date, nil, options)
  end
end

