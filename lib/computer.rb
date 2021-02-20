class Computer

  attr_reader :result

  def initialize
    @result = ["rock", "paper", "scissors"].sample
  end

end
