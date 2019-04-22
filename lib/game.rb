require_relative 'player'

class Game
  attr_accessor :status, :opponent_choice, :opponent

  def initialize(player_choice = "Rock")
    @status = 0
    @player_choice = player_choice
    @opponent = ["Rock", "Paper", "Scissors"]
    @opponent_choice = opponent.sample
  end

  def win_calculator
    rock?
    paper?
    scissors?
  end

  def player_win
    @status += 1
  end

  def player_draw
    @status == 0
  end

  def player_lose
    @status -= 1
  end

  def result
    if @status == -1
      "lost!"
    elsif @status == 0
      "drawed!"
    elsif @status == 1
      "win!"
    end
  end

  def rock?
    if @player_choice == "Rock" && @opponent_choice == "Rock"
      player_draw
    elsif @player_choice == "Rock" && @opponent_choice == "Scissors"
      player_win
    elsif @player_choice == "Rock" && @opponent_choice == "Paper"
      player_lose
    end
  end

  def paper?
    if @player_choice == "Paper" && @opponent_choice == "Rock"
      player_win
    elsif @player_choice == "Paper" && @opponent_choice == "Scissors"
      player_lose
    elsif @player_choice == "Paper" && @opponent_choice == "Paper"
      player_draw
    end
  end

  def scissors?
    if @player_choice == "Scissors" && @opponent_choice == "Rock"
      player_lose
    elsif @player_choice == "Scissors" && @opponent_choice == "Scissors"
      player_draw
    elsif @player_choice == "Scissors" && @opponent_choice == "Paper"
      player_win
    end
  end
end
