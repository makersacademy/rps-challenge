require 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player, computer)
    player = Player.new
    computer = Computer.new
  end

  def player_weapon=(weapon)
      @player_weapon = weapon
  end

  def computer_weapon
    @computer_weapon = computer.weapon
  end

  def result
    
  end



end
