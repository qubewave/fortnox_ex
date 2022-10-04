# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.EmployeeDatedWage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :EmployeeId,
    :FirstDay,
    :MonthlySalary,
    :HourlyPay
  ]

  @type t :: %__MODULE__{
    :EmployeeId => String.t,
    :FirstDay => Date.t,
    :MonthlySalary => String.t | nil,
    :HourlyPay => String.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.EmployeeDatedWage do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:FirstDay, :date, nil, options)
  end
end

