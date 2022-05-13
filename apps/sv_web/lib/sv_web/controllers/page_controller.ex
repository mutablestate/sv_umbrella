defmodule SvWeb.PageController do
  use SvWeb, :controller

  import PhoenixGon.Controller

  def index(conn, _params) do
    is_authed = true

    conn = put_gon(conn, is_authed: is_authed)
    render(conn, "index.html")
  end
end
