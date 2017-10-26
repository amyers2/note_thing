use Mix.Config

config :notebook, ecto_repos: [Notebook.Repo]

import_config "#{Mix.env}.exs"
