class Computer
 attr_reader :move
 
 def make_move
  @move = [:rock, :paper, :scissors].sample
 end

end
