class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon = nil)
    @weapon = weapon ||= Player::random_weapon
  end

  def self.random_weapon
    ['rock', 'paper', 'scissors'].sample
  end

end
