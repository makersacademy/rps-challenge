# creates named players who can select random weapons
class Player
  attr_reader :name, :weapon
  DEFAULT_NAME = 'RPS-Bot'

  def initialize(name = DEFAULT_NAME)
    @name = name
    @weapon = nil
  end

  def choose_weapon(weapon = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample)
    @weapon = weapon
  end
end
