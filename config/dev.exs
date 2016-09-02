use Mix.Config

config :logger, level: :error

config :music_db, MusicDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "music_db_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
