defmodule Copi.Repo.Migrations.PopulateExternalCardIds do
  use Ecto.Migration

  import Copi.CardMigration

  def change do

    migrate_cards_to_database("priv/repo/cornucopia/ecommerce-cards-1.21-en.yaml", "priv/repo/cornucopia/ecommerce-mappings-1.2.yaml")

    migrate_cards_to_database( "priv/repo/cornucopia/eop-cards--1.0-en.yaml", nil)

    migrate_cards_to_database( "priv/repo/cornucopia/masvs-cards-1.00-en.yaml", "priv/repo/cornucopia/masvs-mappings-1.0.yaml")
  end

end
