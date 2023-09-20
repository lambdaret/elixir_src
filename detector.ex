defmodule Detector do
  # def better_than_average(class_points, your_points) do
    #   Enum.sum(class_points)/Enum.count(class_points) < your_points
    # end
  def f(s, class_points), do: s / length(class_points)
  def y(s, your_points), do: s < your_points
  def better_than_average(class_points, your_points) do
    # f = &(&1 / length(class_points))
    # y = &(&1 < your_points)
    class_points
    |> Enum.sum
    |> f
    |> y
  end
end
