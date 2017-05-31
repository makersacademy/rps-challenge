require_relative 'game'

class Player

  attr_reader :name
  attr_accessor :weapon

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def initialize(name)
    @name = name
  end

end
