# lib/player.rb

class Player
  attr_reader :name, :weapon

  def initialize(name, weapon = 'ROCK')
    @name = name
    @weapon = weapon
  end
end
