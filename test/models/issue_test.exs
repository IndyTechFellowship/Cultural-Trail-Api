defmodule CulturalTrailApi.IssueTest do
  use CulturalTrailApi.ModelCase

  alias CulturalTrailApi.Issue
  alias CulturalTrailApi.User

  @valid_attrs %{responsibleParty: "person", description: "some content", imageUrl: "some content", lat: "120.5", lng: "120.5", name: "some content", priority: 42, reportedDate: "2010-04-17 14:00:00"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    user_changeset = User.changeset(%User{}, %{email: "something@test.com", password: "validPassword", name: "Fake Name"})
    {:ok, user} = Repo.insert user_changeset
    attrs = Map.put(@valid_attrs, :user_id, user.id)
    changeset = Issue.changeset(%Issue{}, attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Issue.changeset(%Issue{}, @invalid_attrs)
    refute changeset.valid?
  end
end
