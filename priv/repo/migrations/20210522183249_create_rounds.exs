defmodule Copi.Repo.Migrations.CreateRounds do
  use Ecto.Migration

  def change do
    create table(:rounds) do
      add :number, :integer
      add :game_id, references(:games, on_delete: :nothing)
      add :winner, references(:players, on_delete: :nothing)

      timestamps()
    end

    create index(:rounds, [:game_id])
    create index(:rounds, [:winner])
  end
end