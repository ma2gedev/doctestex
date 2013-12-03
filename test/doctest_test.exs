defmodule DoctestTest do
  use ExUnit.Case

  doctest Doctest.Hello

  test "the truth" do
    assert(true)
  end
end
