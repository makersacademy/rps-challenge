class ComputerMove

  attr_reader :make_move

  def initialize
    @make_move = ["scissors","rock","paper"].sample
  end

end
