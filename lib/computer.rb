
class Computer

  OPTIONS = [:rock, :paper, :scissors]

  attr_reader :computer_turn

  def initialize
    @computer_turn = OPTIONS.sample
  end
end
