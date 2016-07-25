defmodule CulturalTrailApi.DamageItemsTest do
  use CulturalTrailApi.ModelCase

  alias CulturalTrailApi.DamageItems

  @valid_attrs %{damages: [], item: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = DamageItems.changeset(%DamageItems{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = DamageItems.changeset(%DamageItems{}, @invalid_attrs)
    refute changeset.valid?
  end
end
