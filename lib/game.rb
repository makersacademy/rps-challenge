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

  def calculate_outcome(weapon_a, weapon_b)
    return :draw if weapon_a == weapon_b 

    winner_weapon(weapon_a, weapon_b)
  end

  def winner_weapon(weapon_a, weapon_b) 
    if (RULES[weapon_a]) == weapon_b
      @winning_weapon = weapon_a 
    else @winning_weapon = weapon_b
    end

    return @winning_weapon
  end

  def winning_player(_weapon_a, weapon_b)
    return DEFAULT_PLAYER_2 if @winning_weapon == weapon_b

    @player_name

  end
   
end
