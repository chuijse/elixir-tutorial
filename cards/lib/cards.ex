defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def create_deck do
    values = ["Ace","Two","Three","Four","Five",]
    suits = ["Spades", "Clubs", "Hearts", "Diamonts"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @spec contains?(any, any) :: boolean
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    {a,_b}= Enum.split(deck, hand_size)
    a
  end
end
