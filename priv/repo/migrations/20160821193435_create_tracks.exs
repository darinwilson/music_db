defmodule EctoCookbook.Repo.Migrations.CreateTracks do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :title, :string, null: false
      add :duration, :integer, null: true
      add :index, :integer, null: false
      add :number_of_plays, :integer, null: false, default: 0
      add :album_id, references(:albums, on_delete: :nothing)
      timestamps()
    end
    create index(:tracks, [:title])
    create index(:tracks, [:album_id])
  end
end
