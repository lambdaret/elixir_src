defmodule Calculator do
  def get_average(marks) do
    div(Enum.sum(marks), Enum.count(marks))
  end
end
