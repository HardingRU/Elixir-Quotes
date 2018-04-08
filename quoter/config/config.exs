# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :quoter,
  ecto_repos: [Quoter.Repo]

# Configures the endpoint
config :quoter, QuoterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A+q5/m/ZpISSlgdDVSvwyGC7/Tj7oVRICF7iiPw9/A8djb0rwhYP69GPGVNwe6aE",
  render_errors: [view: QuoterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Quoter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
