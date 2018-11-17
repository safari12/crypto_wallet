defmodule CryptoWallet.Account do
  @doc """
  Generates hash for public key
  """
  @spec generate_public_hash(binary) :: binary
  def generate_public_hash(public_key) do
    public_key
    |> (&:crypto.hash(:sha256, &1)).()
    |> (&:crypto.hash(:ripemd160, &1)).()
  end

  @doc """
  Generates public address for public key
  """
  @spec generate_public_address(binary, binary) :: binary
  def generate_public_address(public_key, version) do
    generate_public_hash(public_key)
    |> Base58Check.encode(version)
  end
end
