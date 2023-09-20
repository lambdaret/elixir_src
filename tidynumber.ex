defmodule TidyNumber do
  def tidy_number(n) do
    n
    |> Integer.digits
    |> Enum.sort
    |> Integer.undigits
    # |> (& &1 == n).()
    |> Kernel.==(n)
  end
end
