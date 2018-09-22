require_relative 'player'

class Computer < Player
  def initialize
    @name = "Computer"
  end

  def move=(ignore)  #how to avoid parameter?
    @move = choice
  end

  private
  
  def choice
    [:rock, :paper, :scissors].sample
  end
end
