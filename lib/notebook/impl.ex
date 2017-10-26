defmodule Notebook.Impl do

  alias Notebook.Schema
  import Ecto.Query

  def add(title, body) do
    %Schema{}
    |> Schema.changeset(%{ title: title, body: body })
    |> Notebook.Repo.insert!
  end

  def list_titles() do
    from(note in Schema,
      select: [ note.id, note.title ],
      order_by: note.updated_at)
    |> Notebook.Repo.all
  end

  def find(id) do
    from(note in Schema, where: [id: ^id])
    |> Notebook.Repo.one
  end

  def update(id, updates) do
    find(id)
    |> Schema.changeset(updates)
    |> Notebook.Repo.update!
  end
  
end
