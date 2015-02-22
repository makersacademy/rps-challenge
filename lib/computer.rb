class Computer

  attr_reader :weapon

  def pick
    number = rand(1..9)
      if number <= 3
        @weapon = "rock"
      elsif number <=6
        @weapon = "paper"
      else
        @weapon = "scissors"
      end
  end

end