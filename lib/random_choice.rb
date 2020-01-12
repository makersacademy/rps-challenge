class RandomChoice 

  def initialize 
    @combos = ["Rock", "Paper", "Scissors"]
  end

  def return_random_choice
    choice = @combos.sample
  end
end
