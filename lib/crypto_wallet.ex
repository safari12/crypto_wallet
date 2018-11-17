defmodule CryptoWallet do

  alias CryptoWallet.Account

  defdelegate generate_key_pair, to: Secp256k1
  defdelegate generate_public_key(private_key), to: Secp256k1
  defdelegate generate_public_address(public_key, version \\ <<0x00>>), to: Account

end
