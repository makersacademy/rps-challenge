require_relative 'rules'

class Computer
  include Rules

  def self.weapon
    Rules::WEAPONS.sample
  end

end
