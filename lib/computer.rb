class Computer
  attr_reader :computers_answer, :name

  def initialize(name = "Computer")
    @name = name
  end

  def computer_answer(rps)
    @computers_answer = rps
  end

  def computer_choice
    choice = ['rock', 'paper', 'scissor'].sample
    computer_answer(choice)
  end

end
