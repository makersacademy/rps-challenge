require_relative 'game'

class Computer

  def self.find(id)
    computers[id]
  end

  def self.add(id, computer)
    computers[id] = computer
  end

  def self.computers
    @computers ||= {}
  end

  attr_reader :name, :weapon

  def initialize
    @name = 'Computer'
  end

  def choose
    @weapon = Game::WEAPONS.sample
  end
end
