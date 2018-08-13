defmodule RsvpWeb.LoginController do
  use RsvpWeb.Web, :controller

  def index(conn, _) do
    render(conn, "login.html")
  end

  def login(conn, %{"login" => %{"username" => username}}) do
    expiration = 60 * 60 * 24 * 7

    conn
    |> Plug.Conn.put_resp_cookie("username", username, max_age: expiration)
    |> redirect(to: "/")
  end
end


defmodule Something.New do

  def sum(a, b) do
    a + b
  end

end