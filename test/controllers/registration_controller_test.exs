defmodule CulturalTrailApi.RegistrationControllerTest do
  use CulturalTrailApi.ConnCase


  @valid_attrs %{password: "some password"}
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "password_hash value gets set to a hash" do
    #IO.puts("here")
    #changeset = User.changeset(%User{}, @valid_attrs)
    #IO.inspect(changeset)
    #assert Comeonin.Bcrypt.checkpw(@valid_attrs.password, Ecto.Changeset.get_change(changeset, :password_hash))
  end

end
