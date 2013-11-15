class Result < ActiveRecord::Base

  attr_accessible :date, :player1Id, :team1, :team1Score, :player2Id, :team2, :team2Score

  has_one :player_1, foreign_key: "id", primary_key: "player1Id", class_name: "Player"
  has_one :player_2, foreign_key: "id", primary_key: "player2Id", class_name: "Player"

  has_one :team_1, foreign_key: "id", primary_key: "team1", class_name: "Team"
  has_one :team_2, foreign_key: "id", primary_key: "team2", class_name: "Team"
  has_many :teams
  
  def teams
    Team.where{teams.id.eq(my{team1}) | teams.id.eq(my{team2})}
  end

  def players
    Player.where{players.id.eq(my{player1Id}) | players.id.eq(my{player2Id})}
  end
  
  def formatted_date
    date.to_date
  end
  
  def winner
    if team1Score > team2Score
      player_1
    elsif team2Score > team2Score
      player_2  
    else
      nil
    end
    
  end
  
end
