
use Mix.Config

config(:notebook, Notebook.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "notebook_#{Mix.env}",
  username: "dave",
  password: nil,
  hostname: "localhost")
