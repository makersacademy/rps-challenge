class Opponent

  OPTIONS = ["Rock", "Paper", "Scissors"]
  attr_accessor :choice

  def initialize
    @choice = OPTIONS.sample
  end
end
