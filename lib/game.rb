require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :game

  def initialize
    @game = Game.new
  end

  def win
    # return player.name if
      (player.choice == 'Rock' && computer.choice == 'Scissors') ||
      (player.choice == 'Paper' && computer.choice == 'Rock') ||
      (player.choice == 'Scissors' && computer.choice == 'Paper')
    # end
  end

  def lose
    # return computer.name if
      (player.choice == 'Rock' && computer.choice == 'Paper') ||
      (player.choice == 'Paper' && computer.choice == 'Scissors') ||
      (player.choice == 'Scissors' && computer.choice == 'Rock')
    # end
  end

  def draw
    # return "Draw" if
      player.choice == computer.choice
    # end
  end

end
