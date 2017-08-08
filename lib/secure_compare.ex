defmodule SecureCompare do
  use Bitwise

  def compare(a, b) when is_nil(a) or is_nil(b), do: false
  def compare(a, b) when byte_size(a) != byte_size(b), do: false
  def compare(a, b) when is_binary(a) and is_binary(b) do
    a_list = String.to_charlist(a)
    b_list = String.to_charlist(b)

    compare(a_list, b_list)
  end
  def compare(a, b) when is_list(a) and is_list(b) do
    res = Enum.zip(a, b) |> Enum.reduce(0, fn({a_byte, b_byte}, acc) ->
      acc ||| bxor(a_byte, b_byte)
    end)

    res == 0
  end
end
