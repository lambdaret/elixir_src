defmodule CaseOf do
  def insert(x, []) do
    [x]
  end
  def insert(x, set) do
    case Enum.member?(set, x) do
      true -> set
      false -> [x|set]
    end
  end
  def beach(temperature) do
    case temperature do
      {:celsius, n} when n >=20 and n <= 45 -> "favorable"
      {:kelvin, n} when n >=293 and n <= 318 -> "favorable"
      {:fahrenheit, n} when n >=68 and n <= 113 -> "favorable in the US"
      _ -> "avoid beach"
    end
  end
end
