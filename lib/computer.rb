class Computer

  attr_reader :pick

  def turn
    number == rand(1..9)
    if number <= 3
      @turns = "rock"
    elsif number <= 6
      @turns = "paper"
    else
      @turns = "scissors"
    end
  end

end