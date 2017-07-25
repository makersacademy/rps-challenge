class Player

  WEAPONS = ['rock', 'paper', 'scissors']

  attr_reader :name, :weapon, :win_count, :draw_count, :lose_count

  def initialize(name)
    @name = name
    @win_count = 0
    @draw_count = 0
    @lose_count = 0
  end

  def choose_weapon(weapon = nil)
    @weapon = weapon ||= Player::random_weapon
  end

  def self.random_weapon
    WEAPONS.sample
  end

  def win
    @win_count += 1
  end

  def lose
    @lose_count += 1
  end

  def draw
    @draw_count += 1
  end

end
