# CpuPlayer class
class CpuPlayer
  attr_reader :name

  def initialize
    @name = 'CPU'
  end

  def weapon
    Game::WEAPONS.sample
  end
end
