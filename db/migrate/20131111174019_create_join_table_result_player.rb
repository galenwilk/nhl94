class CreateJoinTableResultPlayer < ActiveRecord::Migration
  def change
    create_join_table :results, :players do |t|
      # t.index [:result_id, :player_id]
      # t.index [:player_id, :result_id]
    end
  end
end
