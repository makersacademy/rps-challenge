require_relative 'moves'

class Player

  include Moves

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end