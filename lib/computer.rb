
class Computer

  attr_reader :name, :choice

  DEFAULT_NAME = 'SkyNet'

  MOVES = [:r, :p, :s, :l, :sp]

  def initialize
    @name = DEFAULT_NAME
  end

  def player_move
    @choice = MOVES.sample
  end

end

