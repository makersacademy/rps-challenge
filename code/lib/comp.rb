class Comp

  attr_reader :choice
  
  def self.choice
    @choice = ["rock", "paper", "scissors"].sample
  end

end