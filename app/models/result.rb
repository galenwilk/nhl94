class Result < ActiveRecord::Base

  attr_accessible :date, :player1Id, :team1, :team1Score, :player2Id, :team2, :team2Score

  def teams
    Team.where{teams.id.eq(my{team1}) | teams.id.eq(my{team2})}
  end

  def players
    Player.where{players.id.eq(my{player1Id}) | players.id.eq(my{player2Id})}
  end
end
