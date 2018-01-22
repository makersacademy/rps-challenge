require_relative './computer.rb'

class Game

  attr_reader :player, :rounds, :winner, :computer, :choices

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    @rounds = 0
    @winner = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def calculate(player, computer = @computer.choice)
    @choices = [player, computer]
    if player_win?(player, computer)
      win
    elsif player_lose?(player, computer)
      lose
    end
  end

  def clear_winner
    @winner = nil
  end

  def finished?
    @rounds == 3
  end

  private

  def player_win?(player, computer)
    (player == "rock" && computer == "scissors") || (player == "paper" && computer == "rock") || (player == "scissors" && computer == "paper")
  end

  def player_lose?(player, computer)
    (player == "scissors" && computer == "rock") || (player == "rock" && computer == "paper") || (player == "paper" && computer == "scissors")
  end

  def next_round
    @rounds += 1
  end

  def win
    @player.win
    next_round
    @winner = @player
  end

  def lose
    @computer.win
    next_round
    @winner = @computer
  end

end
