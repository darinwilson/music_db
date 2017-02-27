defmodule MusicDb.Artist do
  use Ecto.Schema

  schema "artists" do
    field :name
    timestamps()

    has_many :albums, MusicDb.Album
  end

end
