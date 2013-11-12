class Player < ActiveRecord::Base

  attr_accessible :name, :email
  
  has_many :results, through: :players_results

end
