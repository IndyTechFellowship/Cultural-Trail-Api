defmodule CulturalTrailApi.Repo.Migrations.IssueAddResponsibleParty do
  use Ecto.Migration

  def change do
    alter table(:issues) do
      add :responsible_party, :string
    end
  end
end
