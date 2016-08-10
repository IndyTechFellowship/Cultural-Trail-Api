defmodule CulturalTrailApi.SessionControllerTest do
  use CulturalTrailApi.ConnCase

  alias CulturalTrailApi.User
  @reg_attrs %{email: "user@example.com", password: "validPassword", name: "username"}
  @login_attrs %{email: "user@example.com", password: "validPassword"}
  @invalid_attrs %{email: "non-existing-user@example.com", password: "no-password", name: "username"}

  setup do
    changeset = User.changeset(%User{}, @reg_attrs)
    {:ok, user} = Repo.insert changeset
    token = User.generate_token(user)

    conn = conn() |> put_req_header("accept", "application/json")
    {:ok, conn: conn, user: user, token: token}
  end

  test "Cannot authenticate a non existing user", %{conn: conn} do
    conn = post conn, session_path(conn, :login), user: @invalid_attrs
    assert json_response(conn, 422)
  end

  test "Login a registered user", %{conn: conn} do
    conn = post conn, session_path(conn, :login), user: @login_attrs
    conn |> doc
    assert json_response(conn, 200)["data"]["token"] != nil
  end

  test "Check if token is valid", %{conn: conn, token: token} do
    conn = put_req_header(conn, "api-token", "Token: " <> token)
    conn = get conn, session_path(conn, :validate)
    conn |> doc
    assert json_response(conn, 200)
  end

test "validate fails if invalid token", %{conn: conn} do
    conn = put_req_header(conn, "api-token", "Token: invalid-token")
    conn = get conn, session_path(conn, :validate)
    assert json_response(conn, 401)
  end
end
