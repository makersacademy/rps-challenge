require_relative 'round'

class Computer
  def weapon
    Round::WEAPONS.sample
    # syntax for referring to a constant in another class
  end
end
