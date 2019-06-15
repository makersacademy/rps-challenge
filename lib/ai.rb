class Ai

  attr_reader :move

  def initialize
    @move = self.random_move
  end

  def random_move
    @move = ['Rock','Paper','Scissors'].sample
  end
end