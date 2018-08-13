use Mix.Config


config :rsvp, Rsvp.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "rsvp",
  username: "postgres",
  password: "abcd1234....",
  hostname: "localhost",
  port: "5432"

config :rsvp, ecto_repos: [Rsvp.Repo]
