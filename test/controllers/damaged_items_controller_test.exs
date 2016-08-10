defmodule CulturalTrailApi.DamagedItemsControllerTest do
  use CulturalTrailApi.ConnCase

  alias CulturalTrailApi.DamageItems
  alias CulturalTrailApi.User

  @valid_attrs %{item: "some thing", damages: ["broken", "dead", "hurt"]}
  @user_valid_attrs %{email: "something@test.com", password: "validPassword"}

  setup do
    item_changeset = DamageItems.changeset(%DamageItems{}, @valid_attrs)
    user_changeset = User.changeset(%User{}, %{email: "something@test.com", password: "validPassword", name: "Fake Name"})
    {:ok, user} = Repo.insert user_changeset
    token = User.generate_token(user)
    {:ok, damaged_item} = Repo.insert item_changeset

    conn() |> put_req_header("accept", "application/json")
    conn = conn() |> put_req_header("api-token", "Token: " <> token)
    {:ok, conn: conn, item: damaged_item, token: token}
  end

  test "Get all options for damaged options", %{conn: conn} do
    conn = get conn, damaged_items_path(conn, :index)
    conn |> doc
    assert json_response(conn,200)
  end

end
