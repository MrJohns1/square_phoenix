defmodule SquarePhoenixWeb.PageController do
  use SquarePhoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
