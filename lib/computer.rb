class Computer

attr_accessor :move

  def random_move
    @move = [:rock, :paper, :scissors].sample
  end


end