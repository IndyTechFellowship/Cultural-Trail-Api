defmodule CulturalTrailApi.Repo.Migrations.CreateDamageItems do
  use Ecto.Migration

  def change do
    create table(:damage_items) do
      add :item, :string
      add :damages, {:array, :string}

      timestamps
    end

  end
end
