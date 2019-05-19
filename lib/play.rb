class Play

  attr_reader :move

  def initialize(move)
    @move = move
  end

  def number
    if @move == :rock
      @number = 10
    elsif @move == :paper
      @number = 20
    elsif @move == :scissors
      @number = 30
    end
  end
end
