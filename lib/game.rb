require_relative 'player'

class Game
  attr_reader :player, :result

  def initialize(player)
    @player = player
    @result = nil
  end

  def computer
    moves = ["rock", "paper", "scissors"]
    moves.sample
  end

  def rock
    computer
    if computer == "rock"
      @result = nil
    elsif computer == "paper"
      @result = false
    elsif computer == "scissors"
      @result = true
    end
  end

  def paper

  end

  def scissors

  end
end