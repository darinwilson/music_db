defmodule MusicDb.Repo do
  use Ecto.Repo, otp_app: :music_db

  def count(table) do
    aggregate(table, :count, :id)
  end
end
