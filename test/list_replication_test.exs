defmodule ListReplicationTest do
  use ExUnit.Case
  doctest ListReplication

  test "the return to 'S' equal to 1" do
    n = 1
    list = Enum.to_list(1..5)
    assert ListReplication.replicate(n, list) == list
  end

  test "the return to 'X' equal to 10" do
    n = 1
    list = Enum.to_list(1..10)
    assert ListReplication.replicate(n, list) == list
  end

  test "the return to 'S' equal to 2" do
    n = 2
    list = Enum.to_list(1..5)
    assert ListReplication.replicate(n, list) == [1,1,2,2,3,3,4,4,5,5]
  end

  test "the return to 'S' equal to 0" do
    n = 0
    list = Enum.to_list(1..5)
    assert ListReplication.replicate(n, list) == []
  end

  test "the return to 'X' equal to 0" do
    n = 1
    list = []
    assert ListReplication.replicate(n, list) == list
  end

  test "the return to 'S' equal to -1" do
    n = -1
    list = Enum.to_list(1..5)
    assert ListReplication.replicate(n, list) == :error
  end

  test "the return to 'S' greater than 100" do
    n = 101
    list = Enum.to_list(1..5)
    assert ListReplication.replicate(n, list) == :error
  end

  test "the return to 'X' size greater than 10" do
    n = 1
    list = Enum.to_list(1..11)
    assert ListReplication.replicate(n, list) == :error
  end
end