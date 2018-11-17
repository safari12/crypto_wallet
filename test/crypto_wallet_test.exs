defmodule CryptoWalletTest do
  use ExUnit.Case
  doctest CryptoWallet

  test "greets the world" do
    assert CryptoWallet.hello() == :world
  end
end
