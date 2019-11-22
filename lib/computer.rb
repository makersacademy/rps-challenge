class Computer 

  attr_reader :move

  RPS = [:rock, :paper, :scissors]
  
  def initialize(move = RPS)
    @move = move.sample.to_s.capitalize
  end

end