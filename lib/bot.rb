class Bot

  attr_reader :choice, :name

  def initialize
    @name = "RPS BOT"
  end

  def bot_shake
    arr = ["rock", "paper", "scissors"]
    @choice = arr[rand(0..2)]
  end

end