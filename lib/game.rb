require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :computer, :player_weapon, :computer_weapon

  BEATS = { rock: :scissors, scissors: :paper, paper: :rock }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def player_choice(weapon)
    @player_weapon = weapon.to_sym
  end

  def computer_choice
    @computer_weapon = @computer.random_weapon_chooser
  end

  def result
    if @player_weapon == @computer_weapon
      "It's a tie!"
    elsif @player_weapon == BEATS[@computer_weapon]
      "#{@computer.name} wins!!"
    else
      "#{@player.name} wins!!"
    end
  end

end
