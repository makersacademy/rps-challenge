class Game

  attr_reader :player, :player_weapon, :computer_weapon

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player)
    @player = player
    @computer = Computer.new

  end

  def choose_weapon(weapon)
    @player_weapon = weapon.to_sym

  end

  def computer_choose_weapon
    @computer_weapon = @computer.choose_weapon
  end

  def result
    if @computer_weapon == @player_weapon
      :draw
    else
      RULES[@player_weapon] == @computer_weapon ? :win : :lose
    end
  end


end
