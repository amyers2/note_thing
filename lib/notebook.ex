defmodule Notebook do

  alias Notebook.Impl
  
  defdelegate add(title, body),    to: Impl
  defdelegate list_titles(),       to: Impl
  defdelegate find(id),            to: Impl
  defdelegate update(id, updates), to: Impl
  
end
