# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TodoList.Repo.insert!(%TodoList.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

[
  %TodoList.Todo{title: "First task"},
  %TodoList.Todo{title: "Second task, w describe", desc: "Describe for second task"},
  %TodoList.Todo{title: "Third task, done", desc: "Describe for third task", done: true},
  %TodoList.Todo{title: "4th task, high priority", priority: 5},
]
  |> Enum.map(&TodoList.Todo.changeset(&1))
  |> Enum.each(&TodoList.Repo.insert!(&1))
