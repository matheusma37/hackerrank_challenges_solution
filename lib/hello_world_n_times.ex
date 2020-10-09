defmodule HelloWorldNTimes do
  def greet(n) when n < 0 do
    :error
  end

  def greet(n) when not is_integer(n) do
    :error
  end

  def greet(n) when n > 0 do
    list = for _ <- 1..n, do: "Hello World"
    Enum.reduce(list, fn a, b -> "#{b}\n#{a}" end)
  end

  def greet(0) do
    ""
  end
end