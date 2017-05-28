require_relative 'game'

class Computer

  attr_reader :weapon

  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end
end
