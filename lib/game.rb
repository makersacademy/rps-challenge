class Game

  attr_reader :players, :result, :scoreboard

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    #@scoreboard = {player_1 => 0, player_2 => 0}
  end

  def calculate_result
    return @result = 'draw' if players.first.move == players.last.move
    @result = player_1_wins? ? players.first : players.last
    update_scores
  end

  def update_scores
    #@scoreboard[@result] += 1 unless @result == 'draw'
    @result.score += 1
  end

  def player_1_wins?
    win = { rock: 'scissors', paper: 'rock', scissors: 'paper' }
    win[players.first.move.to_sym] == players.last.move
  end

end
