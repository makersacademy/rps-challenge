class Player

  attr_reader :name, :computer, :move

  DEFAULT_NAME = "Computer"

  def initialize(name = DEFAULT_NAME)
    if name == DEFAULT_NAME
      @name = "Computer"
      @computer = true
    else
      @name = name
      @computer = false
    end
  end

  def pick_move(move)
    @move = move
  end
end