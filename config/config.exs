# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :sendgrid,
  api_key: System.get_env("SENDGRID_API_KEY")

# Configures the endpoint
config :cultural_trail_api, CulturalTrailApi.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "dI+hDREptGNAr7ObMCiNR2BUVIF73cXHftR3+i1kSo/V6NnwumhqJCRpkz9Jd7gV",
  debug_errors: false,
  render_errors: [view: CulturalTrailApi.ErrorView, format: "json", accepts: ~w(json)],
  pubsub: [name: CulturalTrailApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
