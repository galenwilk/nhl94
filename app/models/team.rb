class Team < ActiveRecord::Base

  attr_accessible :name, :rating, :logo

  has_many :results, through: :results_teams
  
end
