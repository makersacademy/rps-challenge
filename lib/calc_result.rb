require_relative './computer'

class CalcResult
  def initialize(player_weapon, computer_weapon)
    @player_weapon = player_weapon.to_sym
    @computer_weapon = computer_weapon
    @weapons = Computer::WEAPONS
  end

  def result 
    index = @weapons.index(@player_weapon)
    winning_weapon = @weapons[index - 1]
    
    return "It's a draw!" if @player_weapon == @computer_weapon
    @computer_weapon == winning_weapon ? "You lost" : "You're a winner baby!"
  end

end
