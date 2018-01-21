require_relative 'player'
require_relative 'computer'
require_relative 'weapon'

class Game

  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  attr_reader :player
  attr_accessor :opposition, :result

  def initialize(player = Player)
    @player = player
    @opposition = nil
  end

  def winner
    if RULES[self.player.weapon] == @opposition
      "Player Wins!"
    elsif RULES[@opposition] == self.player.weapon
      "Player Loses!"
    elsif @opposition == self.player.weapon
      "A draw..."
    end
  end

  def computer
    @opposition = [:rock, :paper, :scissors].sample
  end
end
