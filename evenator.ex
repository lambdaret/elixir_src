# import Integer
defmodule Evenator do
  # def even?(n) do
  #   # rem(n, 2) == 0
  #   Integer.is_odd(n)
  # end
  # def even?(n) when rem(n, 2) == 0 do
  #   true
  # end
  # def even?(_), do: false

  # def even?(n) do
  #   (is_integer(n) && rem(n, 2) == 0) || false
  # end
  # def even?(n) do
  #   require Integer
  #   case is_integer(n) do
  #     true -> Integer.is_even(n)
  #     false -> false
  #   end
  # end
  import Integer
  def even?(n) do
    is_even(n)
  end
end
