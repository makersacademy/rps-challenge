class Scoreboard

  attr_reader :players_score, :computers_score
  def initialize
    @players_score = 0
    @computers_score = 0
  end

  def update_score(winner)
    winner == 'player' ? @players_score += 1 : @computers_score += 1
  end

end
