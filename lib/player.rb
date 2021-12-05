class Player
  attr_reader :name, :victories, :choosen_move

  DEFAULT_START = 0

  def initialize(name)
    @name = name
    @victories = DEFAULT_START
  end

  def choose_move(move)
    @choosen_move = move
  end
end
