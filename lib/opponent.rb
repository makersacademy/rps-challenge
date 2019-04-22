class Opponent

  attr_reader :move

  def initialize
    @moves_list = ["Rock", "Paper", "Scissors"]
  end

  def choose
    choice = rand(0..2)
    @move = @moves_list[choice]
    return @move
  end

end
