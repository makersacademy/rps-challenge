require_relative 'player'

class Computer < Player
  def initialize
    @name = "Computer"
  end

  # how to avoid parameter?
  def move=(_ignore)
    @move = choice
  end

  private
  def choice
    [:rock, :paper, :scissors].sample
  end
end
