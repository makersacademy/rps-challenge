class Scoreboard

  attr_reader :players_score, :computers_score
  def initialize
    @players_score = 0
    @computers_score = 0
  end

  def update_score(winner)
    @players_score += 1 if winner == 'player'
    @computers_score += 1 if winner == 'computer'
  end

end
