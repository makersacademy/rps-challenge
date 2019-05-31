# creates named players who can select random weapons
class Player
  attr_reader :name 
  DEFAULT_NAME = 'RPS Bot'

  def initialize(name = DEFAULT_NAME)
    @name = name
  end

  def random_weapon
    ['rock', 'paper', 'scissors'].sample
  end
end
