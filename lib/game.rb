require_relative 'player'

class Game
  attr_reader :player, :result

  def initialize(player)
    @player = player
    @result = nil
  end

  def rock
    computer
    if computer_picks_rock
      @result = nil
    elsif computer_picks_paper
      @result = false
    elsif computer_picks_scissors
      @result = true
    end
  end

  def paper
    computer
    if computer_picks_rock
      @result = nil
    elsif computer_picks_paper
      @result = false
    elsif computer_picks_scissors
      @result = true
    end
  end

  def scissors
    computer
    if computer_picks_rock
      @result = nil
    elsif computer_picks_paper
      @result = false
    elsif computer_picks_scissors
      @result = true
    end
  end

private

  def computer
    moves = ["rock", "paper", "scissors"]
    moves.sample
  end

  def computer_picks_rock
    computer == "rock"
  end

  def computer_picks_paper
    computer == "paper"
  end

  def computer_picks_scissors
    computer == "scissors"
  end
end
