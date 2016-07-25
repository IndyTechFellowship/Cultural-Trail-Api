defmodule CulturalTrailApi.DamagedItemView do
  use CulturalTrailApi.Web, :view

  def render("index.json", %{items: items}) do
    %{data: render_many(items, CulturalTrailApi.DamagedItemView, "item.json")}
  end


  def render("item.json", %{damaged_item: damaged_item}) do
    %{item: damaged_item.item, damages: damaged_item.damages}
  end
end
