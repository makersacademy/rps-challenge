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
      @result = nil
    elsif computer_picks_paper
      @player.decrease_score
      @result = false
    elsif computer_picks_scissors
      @player.increase_score
      @result = true
    end
  end

  def paper
    computer
    if computer_picks_rock
      @player.increase_score
      @result = true
    elsif computer_picks_paper
      @result = nil
    elsif computer_picks_scissors
      @player.decrease_score
      @result = false
    end
  end

  def scissors
    computer
    if computer_picks_rock
      @player.decrease_score
      @result = false
    elsif computer_picks_paper
      @player.increase_score
      @result = true
    elsif computer_picks_scissors
      @result = nil
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
