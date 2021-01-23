class Game

  attr_reader :players

  def initialize(players:)
    @players= players
  end

  def result
    if @players[0] == @players[1]
      'draw'
    elsif @players[0] == 'rock' && @players[1] == 'scissors'
      'lose'
    elsif @players[0] == 'paper' && @players[1] == 'rock'
      'lose'
    elsif @players[0] == 'scissors' && @players[1] == 'paper'
      'lose'
    else
      'win'
    end
  end

end
