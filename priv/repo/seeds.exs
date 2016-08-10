import Ecto.Query, only: [from: 2]
# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CulturalTrailApi.Repo.insert!(%CulturalTrailApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

items = [
  %{item: "Light", damages: ["Graffiti", "Out", "Damaged", "Destroyed"]},
  %{item: "Bench", damages: ["Graffiti", "Loose", "Damaged", "Destroyed"]},
  %{item: "Crossing signal", damages: ["No Hand", "No Walk", "Crooked"]},
  %{item: "Trail sign", damages: ["Graffiti", "Bent", "Broken", "Missing"]},
  %{item: "Edging", "damages": ["Loose", "Broken", "Missing"]},
  %{item: "Bollard", "damages": ["Graffiti", "Loose", "Impacted", "Destroyed"]},
  %{item: "Paver", "damages": ["Soiled", "Broken", "Missing"]},
  %{item: "Crossing push button", "damages": ["Graffiti", "No Sound", "No Push"]},
  %{item: "Light control box", "damages": ["Graffiti", "Light Sensor", "Damaged", "Destroyed"]},
  %{item: "Sprinkler box", "damages": ["Graffiti", "Damaged"]},
  %{item: "Curb", "damages": ["Broken"]},
  %{item: "Trash can", "damages": ["Graffiti", "Loose", "Latch", "Pin", "Door", "Top", "Destroyed"]},
  %{item: "Recycling can", "damages": ["Loose", "Latch", "Pin", "Door", "Top", "Destroyed"]},
  %{item: "Glass/Debris", "damages": []},
  %{item: "Art Installation", "damages": ["Graffiti"]}
]

for item <- items do
  query = from damage_item in CulturalTrailApi.DamageItems,
          where: damage_item.item == ^item.item,
          select: damage_item
  found_item = CulturalTrailApi.Repo.all(query)
  c = CulturalTrailApi.DamageItems.changeset(%CulturalTrailApi.DamageItems{}, item)
  case found_item do
    [] ->  CulturalTrailApi.Repo.insert!(c)
    [model] -> model
  end
end
