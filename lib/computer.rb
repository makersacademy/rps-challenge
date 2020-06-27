class Computer
  attr_reader :weapon

  
  def weapon
    #[:rock, :paper, :scissors].sample
    ["Rock", "Paper", "Scissors"].sample
  end
end