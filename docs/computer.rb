class Computer

attr_reader :move

  def initialize
    @name = "the_computer"
    @move = random_choice
  end

private
  def pick_move
    ["rock", "paper", "scissors"].sample
  end
end
