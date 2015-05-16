class Player
  attr_accessor :choice
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose(weapon)
    fail "That's not a valid weapon!" unless valid_weapon?(weapon)
    @choice = weapon
  end

  private

  def valid_weapon?(weapon)
    %w(rock paper scissors).include?(weapon)
  end
end