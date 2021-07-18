class Opponent 
  
  def initialize(name)
    @name = name
  end

  def random_weapon
    [:rock, :paper, :scissors].sample
  end
end
