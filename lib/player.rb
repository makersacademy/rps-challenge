require_relative 'game'

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end
end
