defmodule StewardingWeb.PersonController do
  use StewardingWeb, :controller

  def add(conn, _params) do
    conn |> resp(201, "{}")
  end
end
