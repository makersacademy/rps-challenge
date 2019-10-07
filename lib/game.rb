require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
      print "1 #{@player.weapon} #{@computer.weapon}"
      if player.weapon == computer.weapon
        return "Draw!"
      elsif player.weapon == :rock && computer.weapon != :paper
        return "You won!"
      elsif player.weapon == :paper && computer.weapon != :scissors
        return "You won!"
      elsif player.weapon == :scissors && computer.weapon != :rock
        return "You won!"
      else
        return "You lost!"
    end
  end

end
