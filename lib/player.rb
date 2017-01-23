require_relative 'game'

class Player

  def self.find(id)
    players[id]
  end

  def self.add(id, player)
    players[id] = player
  end

  def self.players
    @players ||= {}
  end

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose(weapon)
    fail 'No such weapon in RPS!' unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end
end
