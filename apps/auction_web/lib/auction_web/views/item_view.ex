defmodule AuctionWeb.ItemView do
  use AuctionWeb, :view

  def _integer_to_currency(cents) do
    dollars_and_cents =
      cents
      |> Decimal.div(100)
      |> Decimal.round(2)
    "$#{dollars_and_cents}"
  end
end
