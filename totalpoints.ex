defmodule TotalPoints do
  def points(games) do
    # games
    # |> Enum.map(fn s ->
    #     [x, y] = String.split(s, ":")
    #     [String.to_integer(x), String.to_integer(y)]
    #    end)

    # games
    # |> Enum.map(fn s ->
    #     with [x, y] <- String.split(s, ":") do
    #       [String.to_integer(x), String.to_integer(y)]
    #     end
    #    end)
    for game <- games do
      [x, y] = String.split(game, ":")
      [ix, iy] = [String.to_integer(x), String.to_integer(y)]
      cond do
        ix > iy -> 3
        ix == iy -> 1
        true -> 0
      end
    end
    |> Enum.sum

  end
end
