defmodule Notebook.Schema do

  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do

    field :title, :string
    field :body,  :string

    timestamps()
  end


  def changeset(note, new_values) do
    note
    |> cast(new_values,  [ :title, :body ])
    |> validate_required([ :title, :body ])
  end
  
end
