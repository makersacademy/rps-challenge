# require_relative 'game'

class Player
  attr_reader :name, :choice

  def initialize(name, choice = nil)
    @name = name
    @choice = nil
  end

end
