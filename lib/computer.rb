require_relative 'game'
require_relative 'player'

class Computer
  # attr_reader :choice
  #
  # def initialize
  #   @choice = choice
  # end

  def randomise_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

end
