# frozen_string_literal: true

# the Game class is responsible for the game logic

class Game
  DEFAULT_ARMOURY = [:rock, :paper, :scissors]
  
  
  def initialize
  end
  
  def select_random(weapons = DEFAULT_ARMOURY)
    weapons.sample
  end
  
   
end
