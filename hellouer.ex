defmodule Hellouer do
  def say_hello(name, city, state) do
    "Hello, #{name |> Enum.join(" ")}! Welcome to #{city}, #{state}!"
  end
end
