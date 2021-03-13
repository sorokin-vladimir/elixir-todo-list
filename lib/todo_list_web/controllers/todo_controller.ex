defmodule TodoListWeb.TodoController do
  use TodoListWeb, :controller

  def index(conn, _params) do
    # json(conn, [":index", "GET"])
    data = TodoList.Todo.get_all()
    # IO.puts(data)
    json(conn, %{"data" => data})
  end
end
