defmodule MyMod.Utils.Math do
  def multiply(x, y) do
    x * y
  end
end

alias MyMod.Utils.Math, as: M
# alias MyMod.Utils.Math
# alias MyMod.Utils

IO.puts(M.multiply(3, 5))
