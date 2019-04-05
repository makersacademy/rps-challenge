class Computer
  attr_reader :action

  def initialize
    @action = nil
    computer_input
  end

  def computer_input
    computer = rand(3)
    if computer == 0
      @action = "paper"
    elsif computer == 1
      @action = "rock"
    else
      @action = "scissors"
    end
  end
end
