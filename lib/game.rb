require_relative 'player'
require_relative 'computer'

class Game

  MAP = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }
  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def win?
    'You win' if MAP[@player.weapon] == @computer.weapon
  end

  def draw?
    "It's a draw" if player.weapon == computer.weapon
  end
end
