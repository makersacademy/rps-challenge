# Responsible for deciding opoonent moves
require_relative 'rules'

class Opponent
  attr_reader :choice, :weapons

  def initialize(weapons = Rules::WEAPONS.keys)
    @weapons = weapons
  end

  def choose_hand
    @choice = @weapons.sample
  end

end
