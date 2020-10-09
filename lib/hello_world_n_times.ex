defmodule HelloWorldNTimes do
  def greet(n) when n < 0 do
    :error
  end
  
  def greet(n) when not is_integer(n) do
    :error
  end
  
  def greet(0) do
    ""
  end
  
  def greet(1) do
    "Hello World"
  end
  
  def greet(n) do
    "Hello World\n" <> greet(n-1)
  end
end