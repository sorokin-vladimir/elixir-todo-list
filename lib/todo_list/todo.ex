defmodule TodoList.Todo do
  use Ecto.Schema
  import Ecto.Changeset
  # alias TodoList.Todo

  schema "todos" do
    field :title, :string
    field :desc, :string, default: ""
    field :done, :boolean, default: false
    field :priority, :integer, default: 2

    timestamps()
  end

  @doc false
  def changeset(todo, params \\ %{}) do
    todo
      |> cast(params, [:title, :desc, :done, :priority])
      |> validate_required([:title])
      |> validate_length(:title, min: 2)
      |> validate_length(:priority, min: 1)
      |> validate_length(:priority, max: 5)
  end

  def get_all do
    TodoList.Todo |> TodoList.Repo.all()
  end
end
