defmodule Collatz do
  def hotpo(n) do
    collatz({0, n}) |> elem(0)
  end

  defp collatz({r, 1}), do: {r, 1}
  defp collatz({r, n}) do
    cond do
      rem(n, 2) == 0 -> collatz({r+1, div(n,2)})
      true      -> collatz({r+1, 3*n+1})
    end
  end

end
