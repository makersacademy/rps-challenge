class Opponent 

  attr_reader :opponent_weapon
  
  def random_weapon
    @opponent_weapon = [:rock, :paper, :scissors].sample
  end
end
