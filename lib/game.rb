# frozen_string_literal: true

# the Game class is responsible for the game logic
require_relative 'weapon'

class Game

  DEFAULT_ARMOURY = [:rock, :paper, :scissors]

  
  def initialize
  end
  
  def select_random(weapons = DEFAULT_ARMOURY)
    @random_weapon = Weapon.new(weapons.sample)
  end
  
  def calculate_winner(player_weapon, player_name)
    if @random_weapon.type == player_weapon.type
      "Draw"
    elsif @random_weapon.beats?(player_weapon)
      "The Game"
    else
      player_name
    end
  end

   
end
