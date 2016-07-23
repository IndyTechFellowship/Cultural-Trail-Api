ExUnit.start

Mix.Task.run "ecto.create", ~w(-r CulturalTrailApi.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r CulturalTrailApi.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(CulturalTrailApi.Repo)

