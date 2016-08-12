defmodule CulturalTrailApi.SessionView do
  use CulturalTrailApi.Web, :view


  def render("show.json", %{token: token}) do
    %{data: render_one(token, CulturalTrailApi.SessionView, "session.json")}
  end

  def render("session.json", %{session: session}) do
    %{token: session}
  end

  def render("error.json", %{error: message}) do
    %{error: message}
  end
end
