class Player

  attr_reader :hand
  
  def initialize
    @hand = nil
  end

  def chooses(choice)
    @hand = choice
  end

end
