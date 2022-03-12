require_relative 'player'

class Game
  attr_reader :player, :result

  def initialize(player)
    @player = player
    @result = nil
  end

  def player_score
    @player.score
  end

  def rock
    computer
    if computer_picks_rock
      tie
    elsif computer_picks_paper
      lose
    elsif computer_picks_scissors
      win
    end
  end

  def paper
    computer
    if computer_picks_rock
      win
    elsif computer_picks_paper
      tie
    elsif computer_picks_scissors
      lose
    end
  end

  def scissors
    computer
    if computer_picks_rock
      lose
    elsif computer_picks_paper
      win
    elsif computer_picks_scissors
      tie
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

  def win
    @player.increase_score
    @result = true
  end

  def tie
    @result = nil
  end

  def lose
    @player.decrease_score
    @result = false
  end
end
