require_relative 'player'
class Computer

  attr_reader :com_name
  def initialize
    @com_name = "Bob"
  end

  def pick
    Player::WEAPONS.sample
  end
end
