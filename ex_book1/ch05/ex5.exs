defmodule StringUtility do
  def add_parens(x) do
    "(#{x})"
  end
end

x = "elixir"
y = StringUtility.add_parens(x)
IO.puts(y)
