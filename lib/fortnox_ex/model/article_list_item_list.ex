# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Model.ArticleListItemList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Articles
  ]

  @type t :: %__MODULE__{
    :Articles => [FortnoxEx.Model.ArticleListItem.t] | nil
  }
end

defimpl Poison.Decoder, for: FortnoxEx.Model.ArticleListItemList do
  import FortnoxEx.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Articles, :list, FortnoxEx.Model.ArticleListItem, options)
  end
end
