class ChangeTeamsInTablesToReferences < ActiveRecord::Migration
  def change
    change_table :results do |t|
      t.remove :team1, :team2
      t.integer :team1, :team2
    end
  end
end
