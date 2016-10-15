require_relative 'player'

class Computer < Player
  attr_reader :weapon

  def random_weapon_selection
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

end
