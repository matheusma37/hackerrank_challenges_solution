defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "test that returns 'Hello World'" do
    assert HelloWorld.greet == "Hello World"
  end
end