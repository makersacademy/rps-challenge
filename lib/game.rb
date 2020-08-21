require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :player_choice, :computer_choice

  def initialize(player = Player.new(:name), weapon = Weapon.new, computer = Computer.new)
    @player = player
    @weapon = weapon
    @computer = computer
    @player_choice = nil
    @computer_choice = nil
  end

  def player_name
    @player.name
  end

  def player_choice(choice)
    @player_choice = choice.to_sym
  end

  def computer_choice
    @computer_choice = @computer.random_weapon
  end
end
