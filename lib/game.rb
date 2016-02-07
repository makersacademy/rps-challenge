require './lib/player'
require './lib/computer'
class Game
WIN_MATRIX = {
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
  attr_reader :player1

  def initialize(player1)
    @player1 = player1
  end

  def result
    if (player1.move) == (player2.move)
      :draw
    else
      WIN_MATRIX[(player1.move).to_sym].include?(computer.move) ? :win : :lose
    end
  end
end
