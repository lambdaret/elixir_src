defmodule Kata do
  def growing_plant(up_speed, down_speed, desired_height) do
    {n, _} = Stream.cycle([up_speed, -down_speed])
    |> Enum.reduce_while({1, 0}, fn x, {idx, acc} ->
        if acc+x < desired_height do
          {:cont, {idx+1, acc+x}}
        else
          {:halt, {idx, acc}}
        end
      end)
    div(n+1, 2)
  end
end
