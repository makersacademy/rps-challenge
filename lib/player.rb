class Player
  attr_reader :name, :final_move

  def initialize(name)
    @name = name
    @final_move = nil
  end

  def move(rps)
    @final_move = rps
  end

  def random_move
    move = rand(0..2)
    @final_move = 'rock' if move == 0
    @final_move = 'paper' if move == 1
    @final_move = 'scissors' if move == 2
  end

end
