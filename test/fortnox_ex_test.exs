defmodule FortnoxExTest do
  use ExUnit.Case

  @client_secret ""
  @access_token ""

  def get_access_token do
    FortnoxEx.Authorization.get_authorization_code()
  end

  @tag :skip
  test "test connectivity" do
    FortnoxEx.Connection.new(@client_secret, @access_token)
    |> FortnoxEx.Api.Default.list_customers()
  end

 # @tag :skip
  test "test get_auth_code" do
    # get_access_token()
    # |> raise

    FortnoxEx.Authorization.get_access_token("b8649969-ac23-4c96-a4a1-9327bf8e3cbc")
    |> raise

    {:ok, access_token} = FortnoxEx.Connection.get_access_token(@client_secret, "")
    |> raise
  end
end
