defmodule CulturalTrailApi.UserView do
  use CulturalTrailApi.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, CulturalTrailApi.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, CulturalTrailApi.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email}
  end

  def render("valid.json", data) do
    %{data: %{valid: true}}
  end
end
