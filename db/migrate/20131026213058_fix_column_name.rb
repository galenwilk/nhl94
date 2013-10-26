class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :results, :steam2Score, :team2Score
  end
end
