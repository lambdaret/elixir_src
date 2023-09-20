defmodule Inverter do
  def invert(list) do
    Enum.map(list, &-)
  end
end
