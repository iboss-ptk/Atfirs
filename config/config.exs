# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :atfirs,
  ecto_repos: [Atfirs.Repo]

# Configures the endpoint
config :atfirs, AtfirsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SOfSg0hl2J3ImyKqDgZDFRY1nD+3kA9TgFQhRxbCzTghvWiilB9NWA8vbcUT71p/",
  render_errors: [view: AtfirsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Atfirs.PubSub,
  live_view: [signing_salt: "SRZjZIvx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
