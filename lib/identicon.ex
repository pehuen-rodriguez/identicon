defmodule Identicon do
  @moduledoc """
  Identicon will create a simetric pixel image based on an input string.
  """

  @doc """
  Main.

  ## Examples

      iex> Identicon.main("banana")
      will return your image

  """
  def main(input) do
    input
    |> hash_input
  end

  @doc """
  String hasher. Will return an MD5 hash of the string in a list form.

  ## Examples

      iex> Identicon.hash_input("banana")
      [114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]
  """
  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end
end
