import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :sv, Sv.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "sv_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sv_web, SvWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "XIIGeAauvGoK+RMjoTtLiuv8vT+tO3jVy99iCW55jdZdDx0fK0e3ruCpUQXjH5W8",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :sv, Sv.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
