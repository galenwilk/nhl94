class Result < ActiveRecord::Base

  attr_accessible :date, :player1Id, :team1, :team1Score, :player2Id, :team2, :team2Score
  
  has_many :players
  has_many :teams
  
end
