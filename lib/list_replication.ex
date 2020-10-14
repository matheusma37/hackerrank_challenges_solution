defmodule ListReplication do

  def replicate(n, list) when n in 0..100 and length(list) in 1..10 do
    list
    |> Stream.cycle
    |> Enum.take(n * length(list))
    |> Enum.sort
  end

  def replicate(n, []) when n in 0..100 do
    []
  end

  def replicate(_, _) do
    :error
  end
end