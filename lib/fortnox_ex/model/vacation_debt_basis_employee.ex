# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.VacationDebtBasisEmployee do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :EmployeeId,
    :EmployeeName,
    :DaysEarned,
    :WageEarned,
    :VariableEarned,
    :DebtEarned,
    :DaysUnused,
    :WageUnused,
    :VariableUnused,
    :DebtUnused,
    :DaysSaved,
    :WageSaved,
    :DebtSaved,
    :DebtAdvance,
    :TotalDebtEmployee,
    :TotalDebtEmployerContribution
  ]

  @type t :: %__MODULE__{
    :EmployeeId => String.t,
    :EmployeeName => String.t | nil,
    :DaysEarned => float() | nil,
    :WageEarned => float() | nil,
    :VariableEarned => float() | nil,
    :DebtEarned => float() | nil,
    :DaysUnused => float() | nil,
    :WageUnused => float() | nil,
    :VariableUnused => float() | nil,
    :DebtUnused => float() | nil,
    :DaysSaved => float() | nil,
    :WageSaved => float() | nil,
    :DebtSaved => float() | nil,
    :DebtAdvance => float() | nil,
    :TotalDebtEmployee => float() | nil,
    :TotalDebtEmployerContribution => float() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.VacationDebtBasisEmployee do
  def decode(value, _options) do
    value
  end
end

