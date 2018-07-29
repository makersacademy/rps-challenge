class Computer
  attr_reader :choices

  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def pc_move # computer's move is random
    @choices.sample
  end
end

# class Computer
#   attr_reader :choices

#   def initialize
#     CHOICES = [:rock, :paper, :scissors]
#   end

#   def pc_move # computer's move is random
#     CHOICES.sample
#   end
# end
