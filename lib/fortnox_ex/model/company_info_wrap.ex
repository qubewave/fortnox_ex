# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CompanyInfoWrap do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :CompanyInformation
  ]

  @type t :: %__MODULE__{
    :CompanyInformation => FortnoxEx.Model.CompanyInfo.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CompanyInfoWrap do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:CompanyInformation, :struct, FortnoxEx.Model.CompanyInfo, options)
  end
end

