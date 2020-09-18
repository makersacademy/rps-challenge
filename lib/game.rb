
class Game

  attr_reader :player, :bot_choice, :player_choice

  def initialize(player = "")
    @player = player
  end

  def shake(arg)
    @player_choice = "rock"
  end

  def bot_shake
    arr = ["rock", "paper", "scissors"]
    @bot_choice = arr[rand(0..2)]
  end

end