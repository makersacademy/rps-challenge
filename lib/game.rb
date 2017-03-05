require_relative 'computer'
require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :player, :computer, :weapons

  RULES = { rock: "scissors",
          paper: "rock",
          scissors: "paper" }

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def play(player_weapon)
    @player.check_weapon(player_weapon)
    @player_choice = player_weapon.to_sym
    @computer_choice = @computer.select_weapon
  end

   def result
     return :draw if @player_choice == @computer_choice
     RULES[@player_choice][@computer_choice.to_s] ? :win : :lose
   end

end
