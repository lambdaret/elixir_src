defmodule Useless do
  def add(a, b) do
    a + b
  end

  def hello() do
	  IO.puts("Hello, world!")
	end

  def greet_and_add_two(x) do
    hello()
    add(x,2)
  end

  defmacro sub(x, y) do
    quote do
      unquote(x) - unquote(y)
    end
  end

  def call_macro(x, y) do
    sub(x, y)
  end
end
