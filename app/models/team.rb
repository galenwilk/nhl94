class Team < ActiveRecord::Base

  attr_accessible :name, :rating, :logo

  has_many :results_for_team_1, primary_key: "id", foreign_key: "team1", class_name: "Result"
  
  has_many :results_for_team_2, primary_key: "id", foreign_key: "team2", class_name: "Result"
  
end
