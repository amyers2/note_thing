defmodule Notebook.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do

    import Supervisor.Spec
    
    children = [
      worker(Notebook.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Notebook.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
