require_relative 'game'
require_relative 'computer'


class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end


    def randomise_weapon
      ["Rock", "Paper", "Scissors"].sample
    end


end
