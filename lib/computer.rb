class Computer
  attr_reader :output

  def intitalize
    @output = ["rock", "paper", "scissors"]
  end

  def random
    @output.sample
  end
end
