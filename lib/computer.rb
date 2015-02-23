class Computer

  attr_reader :pick

  def pick
    number == rand(1..9)
    if number <= 3
      @pick = "rock"
    elsif number <= 6
      @pick = "paper"
    else
      @pick = "scissors"
    end
  end

end