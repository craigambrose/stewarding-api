defmodule PersonController do
  use StewardingWeb.ConnCase

  test "add a person" do
    conn =
      build_conn
      |> post("/api/add_person", email: "bob@example.com")

    relationships =
      %{
        key: "bob@example.com",
        relationships: [
          {source: "craig@enspiral.com", target: "bob@enspiral.com"},
          {source: "bob@enspiral.com", target: "sally@enspiral.com"}
        ]
      }

    body = conn |> response(201) |> Poison.decode!

    assert body == %{
      stewardee: nil,
      steward: nil,
      established_rel: [],
      destroyed_rel: []
    }
  end
end
