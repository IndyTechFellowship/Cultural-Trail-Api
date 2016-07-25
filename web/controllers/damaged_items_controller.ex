defmodule CulturalTrailApi.DamagedItemsController do
  use CulturalTrailApi.Web, :controller

  alias CulturalTrailApi.DamageItems
  def index(conn, _params) do
    items = Repo.all(DamageItems)
    conn
    |> put_status(200)
    |> render(CulturalTrailApi.DamagedItemView, "index.json", %{items: items})
  end

end
