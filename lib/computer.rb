# frozen_string_literal: true

# the Computer class simulates the second player
require_relative 'game'

  
class Computer
  DEFAULT_ARMOURY = [:rock, :paper, :scissors]

  def select_random(weapons = DEFAULT_ARMOURY)
    weapons.sample
  end
end
