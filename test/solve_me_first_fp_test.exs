defmodule SolveMeFirstFPTest do
  use ExUnit.Case
  doctest SolveMeFirstFP

  test "test two valid entries" do
    assert SolveMeFirstFP.sum(1, 1000) == 1001
  end

  test "test a invalid entry to A" do
    assert SolveMeFirstFP.sum(0, 1000) == :error
  end

  test "test a invalid entry to B" do
    assert SolveMeFirstFP.sum(1, 1001) == :error
  end

  test "test two valid middle value entries" do
    assert SolveMeFirstFP.sum(501, 500) == 1001
  end

  test "test two invalid entries" do
    assert SolveMeFirstFP.sum(0, 1001) == :error
  end
end
