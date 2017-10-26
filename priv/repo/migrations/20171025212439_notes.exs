defmodule Notebook.Repo.Migrations.Notes do
  use Ecto.Migration

  def change do

    create table :notes do
      add :title, :string
      add :body,  :string

      timestamps()
    end
  end
end
