defmodule CulturalTrailApi.Repo.Migrations.ResponsibleColumnUpdate do
  use Ecto.Migration

    def change do
      rename table(:issues), :responsible_party, to: :responsibleParty
  end
end
