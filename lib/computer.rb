class Computer

  def initialize
    @rock = false
    @paper = false
    @scissors = false
  end

  def set_option
    if random == 1
      @rock = true
    elsif random == 2
      @paper = true
    elsif random == 3
      @scissors = true
    end
  end

  def result(option)
    if option == "Rock" && @paper == true
      "Computer Chose Paper: You Lose"
    elsif option == "Rock" && @scissors == true
      "Computer Chose Scissors: You Win"
    elsif option == "Paper" && @rock == true
      "Computer Chose Rock: You Win"
    elsif option == "Paper" && @scissors == true
      "Computer Chose Scissors: You Lose"
    elsif option == "Scissors" && @rock == true
      "Computer Chose Rock: You Lose"
    elsif option == "Scissors" && @paper == true
      "Computer Chose Paper: You Win"
    else
      "It's a draw"
    end
  end

  private

  attr_reader :rock, :paper, :scissors

  def random
    rand(1..3)
  end

end
