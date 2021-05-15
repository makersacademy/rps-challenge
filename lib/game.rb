# frozen_string_literal: true

# the Game class is responsible for the game logic
class Game

  RULES = { 
    rock: :scissors, 
    paper: :rock, 
    scissors: :paper 
  }

  def calculate_outcome(weapon_a, weapon_b)
    return :draw if weapon_a == weapon_b 

    winner(weapon_a, weapon_b)
  end

  def winner(weapon_a, weapon_b) 
    return weapon_a if (RULES[weapon_a]) == weapon_b

    weapon_b
  end
   
end
