class Player 
  attr_reader :name, :random_weapon
  

  def initialize(name)
    @name = name
  end
end

def random_weapon
  @random_weapon = ['rock', 'paper', 'scissors'].sample
end
