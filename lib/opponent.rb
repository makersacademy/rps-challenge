class Opponent

  CHOICES = [:Rock, :Paper, :Scissors]
  
  def choose
  	choice = Kernel.rand(3)
  	CHOICES[choice]
  end 

end