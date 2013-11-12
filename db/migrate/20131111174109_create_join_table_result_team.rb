class CreateJoinTableResultTeam < ActiveRecord::Migration
  def change
    create_join_table :results, :teams do |t|
      # t.index [:result_id, :team_id]
      # t.index [:team_id, :result_id]
    end
  end
end
