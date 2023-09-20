defmodule SortAndStar do
  def two_sort(s) do
    s
    # |> Enum.map(&String.downcase(&1))
    |> Enum.min
    |> String.split("", trim: true)
    |> Enum.join("***")

  end
end
