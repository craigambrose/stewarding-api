defmodule StewardingWeb.PersonController do
  use StewardingWeb.ConnCase, async: true

  test "add a person" do
    conn =
      build_conn
      |> post("/api/add_person", email: "bob@example.com")
      |> response(200)

    # bob =
    #   %{
    #     key: "bob@example.com",
    #     relationships: [
    #       %{source: "craig@enspiral.com", target: "bob@enspiral.com"},
    #       %{source: "bob@enspiral.com", target: "sally@enspiral.com"}
    #     ]
    #   }

    # body = conn |> response(201) |> Poison.decode!

    # assert body == bob
  end
end
