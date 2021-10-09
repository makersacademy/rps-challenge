class RPSComputer

  attr_reader :move

  def random_move
    @move = ["rock","paper","scissors"].sample
  end

end