defmodule Copi.Repo.Migrations.PopulateCards do
  use Ecto.Migration

  import Copi.CardMigration

  def change do
    add_cards_to_database("priv/repo/cornucopia/eop-cards--1.0-en.yaml", nil)
    add_cards_to_database("priv/repo/cornucopia/webapp-cards-2.00-en.yaml", "priv/repo/cornucopia/webapp-mappings-2.0.yaml")
    add_cards_to_database("priv/repo/cornucopia/mobileapp-cards-1.00-en.yaml", "priv/repo/cornucopia/mobileapp-mappings-1.0.yaml")
  end
end
