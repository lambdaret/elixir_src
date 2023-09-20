defmodule PositiveSum do
  def positive_sum(arr) do
    Enum.filter(arr, & &1 > 0)
    |> Enum.sum
  end
end
