defmodule CulturalTrailApi.PageController do
  use CulturalTrailApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
