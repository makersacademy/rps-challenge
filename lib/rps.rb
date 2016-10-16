class Rps
  attr_reader :rock, :paper, :scissors
  def initialize
      @rock = "Rock"
      @paper = "Paper"
      @scissors = "Scissors"
      @random = ["Rock", "Paper", "Scissors"]
  end

  def random
      @random.sample
  end

end
