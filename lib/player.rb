require_relative './game.rb'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def select_weapon(weapon)
    raise "That it not an option" unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

  #class methods used in order to access instances of Player across server calls
  #in the rps_web.rb file

  def self.find(id)
    players[id]
  end

  def self.add(id, player)
    players[id] = player
  end

  def self.players
    @players ||= {}
  end

end