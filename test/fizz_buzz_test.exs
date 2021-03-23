defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response =
        {:ok,
         [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz, :buzz, :fizzbuzz, :buzz, :buzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expect_response = {:error, "Error reading file: enoent"}

      assert FizzBuzz.build("invalid.txt") == expect_response
    end
  end
end
