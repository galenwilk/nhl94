class Player < ActiveRecord::Base

  attr_accessible :name, :email
  
  has_many :results_for_player_1, primary_key: "id", foreign_key: "player1Id", class_name: "Result"
  
  has_many :results_for_player_2, primary_key: "id", foreign_key: "player2Id", class_name: "Result"
  
  def results
    results_for_player_1 + results_for_player_2
  end
  
  def number_of_wins
    wins = results.select do |result|
      if result.player1Id == id
        result.team1Score > result.team2Score
      else
        result.team2Score > result.team1Score
      end
    end
    wins.count    
  end
  
end
