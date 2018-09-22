class Computer
  #
  # attr_reader :computer_move
  #
  # def initialize
  #   @computer_move = computer_move
  # end

  def random_move
    array = ["rock", "paper", "scissors"]
    array.sample
  end

end
