use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hyan_server, HyanServer.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hyan_server, HyanServer.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "hyan_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
