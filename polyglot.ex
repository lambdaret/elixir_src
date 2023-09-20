defmodule Polylot do
  @l ["hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc"]

  def validate_hello(greetings) do
    ~w/#{String.downcase(greetings)}/
    |> Enum.map(& Enum.member?(@l, &1))
    |> Enum.any?
  end
end
