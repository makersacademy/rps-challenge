class Player
  attr_reader :name, :victories, :p_move

  DEFAULT_START = 0

  def initialize(name)
    @name = name
    @victories = DEFAULT_START
    @p_move = nil
  end

  def choose_move(move)
    @p_move = move
  end

  def victory
    @victories += 1
  end
end
