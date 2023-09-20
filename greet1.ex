defmodule Greet1 do
  def greet(:male, name) do
    IO.write("Hello, Mr. #{name}!")
  end
  def greet(:female, name) do
    IO.write("Hello, Mrs. #{name}!")
  end
  def greet(_, name) do
    IO.write("Hello, #{name}!")
  end

  def old_enough(x) when x >= 16 do
    true
  end
  def old_enough(_) do
    false
  end
  def right_age(x) when x >= 16 and x <= 104 do
    true
  end
  def right_age(_) do
    false
  end
  def wrong_age(x) when x < 16 or x > 104 do
    true
  end
  def wrong_age(_) do
    false
  end
end
