defmodule Doctest.Hello do
  @doc """
  # 基本

  iex> Doctest.Hello.world
  "hello world"

  """
  def world do
    "hello world"
  end


  @doc """
  # 複数のテスト結果を一度に得る場合

  iex> Doctest.Hello.multiple(1)
  2
  iex> Doctest.Hello.multiple(3)
  6

  """
  def multiple(num) do
    num * 2
  end


  @doc """
  # 複数のテスト結果を別々に受け取りたい場合

  iex> Doctest.Hello.add(1, 2)
  3

  iex> Doctest.Hello.add(3, 4)
  7

  """
  def add(x, y) do
    x + y
  end


  @doc """
  # 複数行のテストコード

  iex> Doctest
  ...> .Hello
  ...> .multiple_line
  "multiple line"

  """
  def multiple_line do
    "multiple line"
  end


  @doc """
  # iex コンソール出力結果をそのまま貼付け

  iex(1)> Doctest.Hello.iex_console_result
  "iex console result"

  """
  def iex_console_result do
    "iex console result"
  end


  @doc """
  # Exception をテストする

  iex(1)> Doctest.Hello.raise_message
  ** (RuntimeError) raise!!

  """
  def raise_message do
    raise "raise!!"
  end
end
