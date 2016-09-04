class Computer

  attr_reader :choice
  
  HANDS = [:rock, :paper, :scissors]

  def choose_hand
    @choice = HANDS.sample
  end

end
