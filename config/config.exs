# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hyan_server,
  ecto_repos: [HyanServer.Repo]

# Configures the endpoint
config :hyan_server, HyanServer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "keFB57Ozd11C/EMMz327q/DOPG5DhiqMu11S79O6oLQCn4J0mpI6PzG4tN7l8+pp",
  render_errors: [view: HyanServer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HyanServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
