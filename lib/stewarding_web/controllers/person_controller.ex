defmodule StewardingWeb.PersonController do
  use StewardingWeb, :controller

  def add(conn, params) do
    text conn, "hello world"
  end
end
