require_relative 'game'

class Player
  attr_reader :name, :lives
  DEFAULT_LIVES = 1

  def initialize(name)
    @name = name
    @lives = DEFAULT_LIVES
  end

end
