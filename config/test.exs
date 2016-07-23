use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cultural_trail_api, CulturalTrailApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :cultural_trail_api, CulturalTrailApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "cultural_trail_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
