class Bot
  def initialize
    @choice = ["ROCK", "PAPER", "SCISSORS"]
  end

  def choose
    i = rand(0..2)
    @choice[i]
  end
end
