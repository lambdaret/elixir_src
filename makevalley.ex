defmodule Makevalley do

  def make_valley(a) do
    a
    |> Enum.sort
    |> Enum.reverse
    |> Enum.with_index
    |> Enum.reduce([[], []], fn {x, idx}, [left, right] ->
      case rem(idx, 2) == 0 do
        true -> [[x | left], right]
        false ->[left, [x | right]]
      end
    end)
    |> case do
      [left, right] -> Enum.reverse(left) ++ right
      end
  end

end
