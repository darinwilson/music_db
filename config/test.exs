use Mix.Config

config :music_db, MusicDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "music_db_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

