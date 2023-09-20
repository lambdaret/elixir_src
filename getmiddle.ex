defmodule Challenge do
  def get_middle(str) do
    len = String.length(str)
    r1 = div(len, 2)-(1-rem(len,2))
    n = if rem(len, 2) == 0, do: 2, else: 1
    str
    |> String.slice(r1, n)
  end
end
