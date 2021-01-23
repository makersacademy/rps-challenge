class Opponent

  OPTIONS = ["Rock", "Paper", "Scissors"]
  attr_accessor :choice

  def choice
    @choice = OPTIONS.sample
  end
end
