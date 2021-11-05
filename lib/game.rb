require './lib/player'
require './lib/computer'

class Game
  attr_reader :players
  CHOICES = ['Rock', 'Paper', 'Scissors']

  def initialize(player, computer)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end
end