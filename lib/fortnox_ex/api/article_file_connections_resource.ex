# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.ArticleFileConnectionsResource do
  @moduledoc """
  API calls for all endpoints tagged `ArticleFileConnectionsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create an article file connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ArticleFileConnectionWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.ArticleFileConnectionWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_article_file_connections_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ArticleFileConnectionWrap.t} | {:error, Tesla.Env.t}
  def create_article_file_connections_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/articlefileconnections/")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ArticleFileConnectionWrap{}}
    ])
  end

  @doc """
  Retrieve a single article file connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `file_id` (String.t): identifies the article file connection
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ArticleFileConnectionWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_article_file_connections_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, FortnoxEx.Model.ArticleFileConnectionWrap.t} | {:error, Tesla.Env.t}
  def get_article_file_connections_resource(connection, file_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/articlefileconnections/#{file_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ArticleFileConnectionWrap{}}
    ])
  end

  @doc """
  Retrieve a list of article file connections
  The article file connections register can return a list of records or a single record. By specifying a FileId in the URL, a single record will be returned. Not specifying a FileId will return a list of records.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ArticleFileConnectionListItemWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_article_file_connections_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ArticleFileConnectionListItemWrap.t} | {:error, Tesla.Env.t}
  def list_article_file_connections_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/articlefileconnections/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ArticleFileConnectionListItemWrap{}}
    ])
  end

  @doc """
  Remove an article file connection

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `file_id` (String.t): identifies the article file connection
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_article_file_connections_resource(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_article_file_connections_resource(connection, file_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/articlefileconnections/#{file_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end
end
