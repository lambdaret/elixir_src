import Integer
defmodule Codewars do
  # def even_or_odd(number) do
  #   cond do
  #     is_odd(number) -> "Odd"
  #     true -> "Even"
  #   end
  # end

  def even_or_odd(number) do
    case is_odd(number) do
      0 -> "Odd"
      _ -> "Even"
    end
  end
end
