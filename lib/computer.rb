class Computer

  attr_reader :weapon

  def pick
    number = rand(1..9)
      if number <= 3
        @weapon = "Rock"
      elsif number <=6
        @weapon = "Paper"
      else
        @weapon = "Scissors"
      end
  end

end