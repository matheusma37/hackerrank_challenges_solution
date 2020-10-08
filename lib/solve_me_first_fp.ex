defmodule SolveMeFirstFP do
  def sum(a, b) when (a >= 1 and a <= 1000) and (b >= 1 and b <= 1000) do
    a + b
  end

  def sum(_, _), do: :error
end