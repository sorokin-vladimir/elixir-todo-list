defmodule TodoList.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :desc, :string
      add :done, :boolean
      add :priority, :integer

      timestamps()
    end
  end
end
