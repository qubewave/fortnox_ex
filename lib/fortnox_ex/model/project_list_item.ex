# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ProjectListItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"@url",
    :Description,
    :EndDate,
    :ProjectLeader,
    :ProjectNumber,
    :Status,
    :StartDate
  ]

  @type t :: %__MODULE__{
    :"@url" => String.t | nil,
    :Description => String.t,
    :EndDate => Date.t | nil,
    :ProjectLeader => String.t | nil,
    :ProjectNumber => String.t | nil,
    :Status => String.t | nil,
    :StartDate => Date.t | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ProjectListItem do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:EndDate, :date, nil, options)
    |> deserialize(:StartDate, :date, nil, options)
  end
end

