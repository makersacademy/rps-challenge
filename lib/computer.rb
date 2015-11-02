class Computer

  attr_reader :hand
  
  HAND = [:rock, :scissor, :paper]

  def choose_rand_weapon
    @hand = HAND.sample
  end

end
