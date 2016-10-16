class Computer
  attr_reader :computers_answer, :name
  attr_accessor :score

  def initialize(name = "Computer")
    @name = name
    @score = 0
  end

  def computer_answer(rps)
    @computers_answer = rps
  end

  def computer_choice
    choice = [1, 2, 3].sample
    computer_answer(choice)
  end

end
