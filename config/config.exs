# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :challenge_nfl,
  ecto_repos: [ChallengeNfl.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :challenge_nfl, ChallengeNflWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "76r6vtWImP6WW+PgVj2oE/WZ/Yj3hXCxjXUK5oCu7l8+Ua+TY1hKjF163vKVeyZK",
  render_errors: [view: ChallengeNflWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChallengeNfl.PubSub,
  live_view: [signing_salt: "eXAxVVX1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
