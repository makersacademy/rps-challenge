require_relative 'computer'

class Game
  def initialize(player)
    @player = player
    @computer = Computer.new
    @player_choice = nil
    @comp_choice = @computer.weapon
  end

  def player_choice(player_weapon)
    @player_weapon = player_weapon
  end 



end
