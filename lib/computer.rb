
class Computer

  attr_reader :name

  DEFAULT_NAME = 'SkyNet'

  MOVES = [:r, :p, :s, :l, :sp]

  def initialize
    @name = DEFAULT_NAME
  end

  def choice
    MOVES.sample
  end

end

