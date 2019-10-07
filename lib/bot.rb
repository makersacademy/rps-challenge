class Bot
  attr_reader :choice, :name
  def initialize
    @choice = ""
    @name = "BOT"
  end
  def generate_choice
    options = ["Rock", "Paper", "Scissors"]
    @choice = options[Random.rand(0..2)]
  end
end
