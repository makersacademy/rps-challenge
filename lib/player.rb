class Player
  attr_reader :name, :move

  MOVES = ["rock", "paper", "scissors"]

  def initialize(name = "Computer", is_computer = false)
    @name = name
    @is_computer = is_computer
    @move = ""
  end

  def play_move(move = "")
    if @is_computer
      @move = MOVES.sample
    else
      @move = move
    end
  end
end
