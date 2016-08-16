defmodule CulturalTrailApi.SessionView do
  use CulturalTrailApi.Web, :view


  def render("show.json", data) do
    %{data: render_one(data, CulturalTrailApi.SessionView, "session.json")}
  end

  def render("session.json", %{session: %{token: token, user_id: user_id}}) do
    IO.inspect(token)
    %{token: token, user_id: user_id}
  end

  def render("error.json", %{error: message}) do
    %{error: message}
  end
end
