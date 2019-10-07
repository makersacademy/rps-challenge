class Computer

  attr_reader :current_pick

  def initialize
    @current_pick = ["rock", "paper", "scissors"].sample
  end

end
