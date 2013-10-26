class Result < ActiveRecord::Base
	#validates_presence_of :team1, :team1Score

  attr_accessible :date, :player1Id, :team1, :team1Score, :player2Id, :team2, :team2Score

end
