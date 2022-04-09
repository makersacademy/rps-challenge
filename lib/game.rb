require_relative 'computer.rb'
require_relative 'player.rb'

class Game

  attr_reader :player

  def initialize(player = Player.new("Player"), computer = Computer.new)
    @player = player
    @computer = computer
  end

  def rock
    @player.choose('Rock')
  end

  def paper
    @player.choose('Paper')
  end

  def rock
    @player.choose('Scissors')
  end

  def computer_move
    @computer.random_move
  end

  
end