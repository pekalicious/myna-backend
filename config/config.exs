# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myna_backend,
  ecto_repos: [MynaBackend.Repo]

# Configures the endpoint
config :myna_backend, MynaBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NjkW0UIULg3pH/egSwvKqRQCi+8GsK89qkOnheDPDc0l3sK67q8pnqpYMpNkHTjQ",
  render_errors: [view: MynaBackendWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MynaBackend.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "77XeWWRv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
