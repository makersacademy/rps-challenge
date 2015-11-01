
class Computer

  attr_reader :hand

  def initialize
    @hand = [:rock,:paper, :scissor].sample
  end

end
