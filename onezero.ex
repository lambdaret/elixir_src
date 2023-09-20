defmodule OneZeroSequencer do
  def stringy(size) do
    # n = ceil(size/2)
    # String.duplicate("10", n) |> String.slice(0, size)
    # ["1", "0"]
    # |> Stream.cycle
    # |> Enum.take(size)
    # |> Enum.join
    # [1,0]
    # |> Stream.cycle
    # |> Enum.take(size)
    # |> Enum.join("")
    '10'
    |> Stream.cycle
    |> Enum.take(size)
    |> List.to_string
  end
end
