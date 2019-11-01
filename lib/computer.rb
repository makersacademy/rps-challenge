class Computer
  attr_reader :computer_choice

  def choice
    number = rand(1..3)
      if number == 1
        @computer_choice = "rock"
        return "rock"
      elsif number == 2
        @computer_choice = "scissors"
        return "scissors"
      else
        @computer_choice = "paper"
        return "paper"
      end
  end
end
