
class Player

  attr_reader :name, :choice

  DEFAULT_NAME = 'PieInTheSky'

  def initialize(name = DEFAULT_NAME)
    @name = name
  end

  def player_move(move)
    @choice = move.to_sym
  end

end




