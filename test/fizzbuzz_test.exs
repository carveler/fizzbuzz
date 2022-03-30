defmodule FizzbuzzTest do
  use ExUnit.Case

  test "only other numbers" do
    assert Fizzbuzz.fizzbuzz(1, 2) ==  [1, 2]
  end

  test "only Fizz" do
    assert Fizzbuzz.fizzbuzz(3, 3) ==  ["Fizz"]
    assert Fizzbuzz.fizzbuzz(6, 6) ==  ["Fizz"]
  end

  test "only Buzz" do
    assert Fizzbuzz.fizzbuzz(5, 5) ==  ["Buzz"]
    assert Fizzbuzz.fizzbuzz(5, 5) ==  ["Buzz"]
  end

  test "only FizzBuzz" do
    assert Fizzbuzz.fizzbuzz(15, 15) ==  ["FizzBuzz"]
    assert Fizzbuzz.fizzbuzz(30, 30) ==  ["FizzBuzz"]
  end

  test "mix Fizz / Buzz / FizzBuzz / Other" do
    expected = [
      1, 2, "Fizz", 4, "Buzz",
      "Fizz", 7, 8, "Fizz", "Buzz",
      11, "Fizz", 13, 14, "FizzBuzz",
      16, 17, "Fizz", 19, "Buzz",
      "Fizz", 22, 23, "Fizz", "Buzz",
      26, "Fizz", 28, 29, "FizzBuzz"
    ]
    assert Fizzbuzz.fizzbuzz(1, 30) == expected
  end

  test "from is not integer" do
    assert_raise RuntimeError, "invalid argument", fn ->
      Fizzbuzz.fizzbuzz("1", 15)
    end
  end

  test "to is not integer" do
    assert_raise RuntimeError, "invalid argument", fn ->
      Fizzbuzz.fizzbuzz(1, "15")
    end
  end
end
