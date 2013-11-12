class Result < ActiveRecord::Base

  attr_accessible :date, :player1Id, :team1, :team1Score, :player2Id, :team2, :team2Score
  
  has_many :players, through: :players_results
  has_many :teams, through: :results_teams
  
end
