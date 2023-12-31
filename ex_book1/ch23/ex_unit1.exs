defmodule MyMod do
  def my_func(n) when is_integer(n) do
    n + 1
  end

  def my_func(str) when is_binary(str) do
    case Integer.parse(str) do
      {n, ""} -> n + 1
      _ -> raise(ArgumentError)
    end
  end
end

ExUnit.start()

defmodule MyModTest do
  use ExUnit.Case
  test "整数に1を加える" do
    assert MyMod.my_func(1) == 2
  end
  test "文字列を整数に変換して1を加える" do
    assert MyMod.my_func("100") == 101
  end
end
