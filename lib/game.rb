require_relative './player.rb'

class Game

  attr_reader :player, :bot_choice

  def initialize(player)
    @player = player
  end

  def bot_shake
    arr = ["rock", "paper", "scissors"]
    @bot_choice = arr[rand(0..2)]
  end

end
