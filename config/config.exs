# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stewarding,
  ecto_repos: [Stewarding.Repo]

# Configures the endpoint
config :stewarding, StewardingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RvLsAhs2xYJVEwLgUEtFLKWYrdpf2VGUqj1imSl5Bj3xuD2lFfvOesJaYdByv9uR",
  render_errors: [view: StewardingWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Stewarding.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
