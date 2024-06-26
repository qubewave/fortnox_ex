# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule FortnoxEx.Api.ProjectsResource do
  @moduledoc """
  API calls for all endpoints tagged `ProjectsResource`.
  """

  alias FortnoxEx.Connection
  import FortnoxEx.RequestBuilder

  @doc """
  Create a project

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (ProjectWrap): to create

  ### Returns

  - `{:ok, FortnoxEx.Model.ProjectWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_projects_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ProjectWrap.t} | {:error, Tesla.Env.t}
  def create_projects_resource(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/projects")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ProjectWrap{}}
    ])
  end

  @doc """
  Retrieve a single project

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `project_number` (integer()): identifies the project
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ProjectWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_projects_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ProjectWrap.t} | {:error, Tesla.Env.t}
  def get_projects_resource(connection, project_number, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects/#{project_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ProjectWrap{}}
    ])
  end

  @doc """
  Retrieve a list of projects
  The project register can return a list of records or a single record. By specifying a ProjectNumber in the URL, a single record will be returned. If no ProjectNumber is provided, a list of records will be returned.

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, FortnoxEx.Model.ProjectListItemList.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_projects_resource(Tesla.Env.client, keyword()) :: {:ok, FortnoxEx.Model.ProjectListItemList.t} | {:error, Tesla.Env.t}
  def list_projects_resource(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ProjectListItemList{}}
    ])
  end

  @doc """
  Remove a project

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `project_number` (integer()): identifies the project
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_projects_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def remove_projects_resource(connection, project_number, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/projects/#{project_number}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {:default, false}
    ])
  end

  @doc """
  Update a project

  ### Parameters

  - `connection` (FortnoxEx.Connection): Connection to server
  - `project_number` (integer()): identifies the project
  - `opts` (keyword): Optional parameters
    - `:body` (ProjectWrap): to update

  ### Returns

  - `{:ok, FortnoxEx.Model.ProjectWrap.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_projects_resource(Tesla.Env.client, integer(), keyword()) :: {:ok, FortnoxEx.Model.ProjectWrap.t} | {:error, Tesla.Env.t}
  def update_projects_resource(connection, project_number, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/projects/#{project_number}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %FortnoxEx.Model.ProjectWrap{}}
    ])
  end
end
