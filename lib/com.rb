class Computer
  attr_reader :choice, :name

  def initialize
    @name = "Mr. Computer"
  end

  def generate_choice
    @choice = ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
  end

end 