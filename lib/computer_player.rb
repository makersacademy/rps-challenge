class Computer_Player
  attr_reader :name, :selected_move
  attr_accessor :selected_move

  def initialize(name = "Computer")
    @name = name
    @selected_move = ""
  end

  def move(lower_random_range = 0, upper_random_range = 2)
    random_index = rand(lower_random_range..upper_random_range)
    possible_moves = ["Rock", "Paper", "Scissors"]
    @selected_move = possible_moves[random_index]
  end
end
