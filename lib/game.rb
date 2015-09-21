require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Player.new)
    @player = player
    @computer = computer
  end

  def draw?
    player.choice == computer.choice
  end

  def winner?
    player.choice == :rock && computer.choice == :scissors ||
    player.choice == :paper && computer.choice == :rock ||
    player.choice == :scissors && computer.choice == :paper
  end

  def play
    return "It's a tie!" if draw?
    winner? ? "You win!" : "You lost!"
  end

end
