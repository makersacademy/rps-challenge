require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :game

  def initialize(player, computer)
    @game = Game.new
  end

  def win
      (player.choice == 'Rock' && computer.choice == 'Scissors') ||
      (player.choice == 'Paper' && computer.choice == 'Rock') ||
      (player.choice == 'Scissors' && computer.choice == 'Paper')
  end

  def lose
      (player.choice == 'Rock' && computer.choice == 'Paper') ||
      (player.choice == 'Paper' && computer.choice == 'Scissors') ||
      (player.choice == 'Scissors' && computer.choice == 'Rock')
  end

  def draw
      player.choice == computer.choice
  end

end
