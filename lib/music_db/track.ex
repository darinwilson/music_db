defmodule MusicDb.Track do
  use Ecto.Schema
  alias MusicDb.Album

  schema "tracks" do
    field :title, :string
    field :duration, :integer
    field :index, :integer
    field :number_of_plays, :integer
    timestamps()

    belongs_to :album, Album
  end

end
