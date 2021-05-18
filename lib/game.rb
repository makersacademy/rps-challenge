# frozen_string_literal: true

# the Game class is responsible for the game logic
class Game
  DEFAULT_PLAYER_2 = "The Game"

  RULES = { 
    rock: :scissors, 
    paper: :rock, 
    scissors: :paper 
  }

  attr_reader :winning_weapon

  def initialize(player_1, player_2 = DEFAULT_PLAYER_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def winner_weapon(weapon_a, weapon_b) 
    if (RULES[weapon_a]) == weapon_b
      @winning_weapon = weapon_a 
    elsif (RULES[weapon_b]) == weapon_a
      @winning_weapon = weapon_b 
    else @winning_weapon = :draw
    end

    return @winning_weapon
  end

  def winning_player(weapon_a, weapon_b)
    if @winning_weapon == weapon_b
      @player_2
    elsif @winning_weapon == weapon_a
      @player_1
    else :draw
    end

  end
   
end
