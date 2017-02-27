defmodule EctoCookbook.Repo.Migrations.CreateGenres do
  use Ecto.Migration

  def change do
    create table(:genres) do
      add :name, :string, null: false
      timestamps()
    end
    create index(:genres, [:name], unique: true)
  end

end
