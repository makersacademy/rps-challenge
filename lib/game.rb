require 'computer'

class Game
  attr_reader :players

  def initialize(player, computer = Computer.new)
    @players = [player, computer]
  end

  def player
    @players[0]
  end

  def computer
    @players[1]
  end
end
