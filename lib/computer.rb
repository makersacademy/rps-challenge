class Computer

  attr_reader :computer_choice
  
  def random_rps
    @computer_choice = [:Rock, :Paper, :Scissors].sample
  end

end
