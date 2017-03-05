require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player1, :player2, :result

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
  end

  def play(weapon1, weapon2)
    case [weapon1, weapon2]
    when ['Rock', 'Rock'], ['Paper', 'Paper'], ['Scissors', 'Scissors']
      draw
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
      assign_winner(@player1)
    when ['Rock', 'Paper'], ['Scissors', 'Rock'], ['Paper', 'Scissors']
      assign_winner(@player2)
    end
  end

  def draw
    @result = "It's a draw - play again!"
  end

  def assign_winner(player)
    player.adjust_score(5)
    @result = "#{player.name} wins!"
  end

end
