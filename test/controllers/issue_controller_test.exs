defmodule CulturalTrailApi.IssueControllerTest do
  use CulturalTrailApi.ConnCase

  alias CulturalTrailApi.Issue
  alias CulturalTrailApi.User
  @valid_attrs %{responsibleParty: "someone", description: "some content", imageUrl: "some content", lat: "120.5", lng: "120.5", name: "some content", open: true, priority: 42, reportedDate: "2010-04-17 14:00:00", resolvedDate: "2010-04-17 14:00:00"}
  @invalid_attrs %{}
  @user_valid_attrs %{email: "something@test.com", password: "validPassword", name: "Fake Name"}
  @result_attrs %{"responsbile_party": "someone", reportedBy: "Fake Name", description: "some content", imageUrl: "some content", lat: "120.5", lng: "120.5", name: "some content", open: true, priority: 42, reportedDate: "2010-04-17 14:00:00", resolvedDate: "2010-04-17 14:00:00"}

  setup %{conn: conn} do

    user_changeset = User.changeset(%User{}, %{email: "something@test.com", password: "validPassword", name: "Fake Name"})
    {:ok, user} = Repo.insert user_changeset
    token = User.generate_token(user)
    conn = conn() |> put_req_header("api-token", "Token: " <> token)

    {:ok, user_id: user.id, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "List all issues", %{conn: conn} do
    conn = get conn, issue_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows an issue by id", %{conn: conn, user_id: user_id} do
    d = Timex.now() |> Timex.format!("{YYYY}-{0M}-{0D} {h24}:{m}:{s}") |> Ecto.DateTime.cast!
    issue = Repo.insert! %Issue{user_id: user_id, description: "some content", imageUrl: "some content", lat: 120.5, lng: 120.5, name: "some content", open: true, priority: 42, reportedDate: d , resolvedDate: d}
    conn = get conn, issue_path(conn, :show, issue)
    conn |> doc
    assert json_response(conn, 200)["data"] != %{}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, issue_path(conn, :show, -1)
    end
  end

  test "creates an issue", %{conn: conn, user_id: user_id} do
    attrs = %{responsibleParty: "someone", description: "some content", imageUrl: "some content", lat: "120.5", lng: "120.5", name: "some content", priority: 42, user_id: user_id}
    conn = post conn, issue_path(conn, :create), issue: attrs
    conn |> doc
    assert json_response(conn, 201)["data"]["id"]
    #assert Repo.get_by(Issue, @result_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, issue_path(conn, :create), issue: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates an issue", %{conn: conn, user_id: user_id} do
    issue_attrs = Map.put(@valid_attrs, :user_id, user_id)
    issue = Repo.insert! %Issue{}
    conn = put conn, issue_path(conn, :update, issue), issue: issue_attrs
    conn |> doc
    assert json_response(conn, 200)["data"]["id"]
    #assert Repo.get_by(Issue, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    issue = Repo.insert! %Issue{}
    conn = put conn, issue_path(conn, :update, issue), issue: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes an issue", %{conn: conn} do
    issue = Repo.insert! %Issue{}
    conn = delete conn, issue_path(conn, :delete, issue)
    conn |> doc
    assert response(conn, 204)
    refute Repo.get(Issue, issue.id)
  end
end
