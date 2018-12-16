class Computer

  def initialize
  @weapons = [:Rock, :Paper, :Scissors]  
  end

#Have started at the back end here, double check
# working on repl.it before migrating information
# to the views
# Also - when to initialise a new instance of comp?
# Same time as player?

  def computer_choice
    @weapons.sample.to_s
  end

  def print_choice
    computer_choice
  end

end
