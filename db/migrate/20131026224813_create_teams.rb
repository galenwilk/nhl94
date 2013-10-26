class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :rating
      t.string :logo

      t.timestamps
    end
  end
end
