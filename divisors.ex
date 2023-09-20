defmodule FindTheDivisors do
  def divisors(x) do
    Enum.filter(2..div(x + 1, 2), &(rem(x, &1) == 0))
    |> case do
      [] -> "#{x} is prime"
      divs -> divs
    end
  end
end
