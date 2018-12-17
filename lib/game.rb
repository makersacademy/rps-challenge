class Game
  attr_reader :choices

  def initialize
    @choices = [:rock, :paper, :scissors]
  end

  def play
    "#{@choices.sample}"
  end

end
