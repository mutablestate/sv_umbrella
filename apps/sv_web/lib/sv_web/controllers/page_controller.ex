defmodule SvWeb.PageController do
  use SvWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
