defmodule Fizzbuzz do
  def fizzbuzz(from, to) when is_integer(from) and is_integer(to) do
    from..to |> Enum.map(&(fizzbuzz/1))
  end

  def fizzbuzz(_from, _to), do:
    raise "invalid argument"

  defp fizzbuzz(num) when rem(num, 15) == 0, do:
    "FizzBuzz"

  defp fizzbuzz(num) when rem(num, 5) == 0, do:
      "Buzz"

  defp fizzbuzz(num) when rem(num, 3) == 0, do:
      "Fizz"

  defp fizzbuzz(num), do: num
end
