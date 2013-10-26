class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.datetime :date
      t.string :team1
      t.integer :team1Score
      t.string :team2
      t.integer :steam2Score
      t.integer :player1Id
      t.integer :player2Id

      t.timestamps
    end
  end
end
