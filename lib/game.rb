class Game

  attr_reader :players, :result

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def result
    win = { rock: 'scissors', paper: 'rock', scissors: 'paper' }
    return @result = 'draw' if players.first.move == players.last.move
    @result = win[players.first.move.to_sym] == players.last.move ? players.first : players.last
  end

end
