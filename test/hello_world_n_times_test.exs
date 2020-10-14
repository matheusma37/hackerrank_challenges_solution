defmodule HelloWorldNTimesTest do
  use  ExUnit.Case
  doctest HelloWorldNTimes

  test "that returns 'Hello World' 1 time" do
    assert HelloWorldNTimes.greet(1) == "Hello World"
  end

  test "that returns 'Hello World' 2 time" do
    assert HelloWorldNTimes.greet(2) == "Hello World\nHello World"
  end

  test "that returns 'Hello World' 10 time" do
    expected =
"Hello World
Hello World
Hello World
Hello World
Hello World
Hello World
Hello World
Hello World
Hello World
Hello World"

    assert HelloWorldNTimes.greet(10) == expected
  end

  test "the return to zero" do
    assert HelloWorldNTimes.greet(0) == ""
  end

  test "the return to negative numbers" do
    assert HelloWorldNTimes.greet(-1) == :error
  end

  test "invalid nil value" do
    assert HelloWorldNTimes.greet(nil) == :error
  end

  test "invalid float value" do
    assert HelloWorldNTimes.greet(2.0) == :error
  end
end