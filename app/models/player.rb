class Player < ActiveRecord::Base

  attr_accessible :name, :email

  def results
    Result.where{results.player1Id.eq(my{id}) | results.player2Id.eq(my{id})}
  end

  def wins
    results.select do |result|
      result.player1Id == id && result.team1Score > result.team2Score ||
      result.player2Id == id && result.team2Score > result.team1Score
    end
  end

  def losses
    results.select do |result|
      result.player1Id == id && result.team1Score < result.team2Score ||
      result.player2Id == id && result.team2Score < result.team1Score
    end
  end

  def ties
    results.select do |result|
      result.team1Score == result.team2Score
    end
  end

  def win_count
    wins.count
  end

  def loss_count
    losses.count
  end

  def tie_count
    ties.count
  end

  def records_by_opponent
    tally = {}
    Player.all.each do |opponent|
      tally[opponent.name] = record(opponent)
    end
    tally.except(name)
  end

  def record(opponent = nil)
    tally = {wins: 0, losses: 0, ties: 0}
    games = opponent ? results_for_opponent(opponent) : results
    games.each do |result|
      if result.player1Id == id && result.team1Score > result.team2Score
        tally[:wins] += 1
      elsif result.player2Id == id && result.team2Score > result.team1Score
        tally[:wins] += 1
      elsif result.team1Score == result.team2Score
        tally[:ties] += 1
      else
        tally[:losses] += 1
      end
    end
    tally
  end

  def results_for_opponent(opponent)
    Result.where{results.player1Id.eq(my{id}) & results.player2Id.eq(my{opponent.id})  |
                 results.player2Id.eq(my{id}) & results.player1Id.eq(my{opponent.id})
               }
  end

end
