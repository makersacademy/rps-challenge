class Rock
  attr_reader :outcomes

  def initialize
    @outcome = [Rock.rock, Rock.paper, Rock.scissors]
  end

  def outcome
    @outcome[0]
  end

  private

  def rock
    "Draw"
  end

  def paper

  end

  def scissors

  end
end
