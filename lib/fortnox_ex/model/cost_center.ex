# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.CostCenter do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Code,
    :Description,
    :Note,
    :Active
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Code => String.t,
    :Description => String.t,
    :Note => String.t | nil,
    :Active => boolean() | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.CostCenter do
  def decode(value, _options) do
    value
  end
end

