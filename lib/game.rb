require_relative 'player'

class Game
  attr_reader :player, :move

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = (player)
    @outcome = ""
  end

  def computer_move
    @move = ["Scissors", "Paper", "Rock"].sample
  end

  def outcome(player_choice)
    if player_choice == "Scissors" && @move == "Scissors"
      "It's a draw!"
    elsif player_choice == "Scissors" && @move == "Rock"
      "You lose!"
    elsif player_choice == "Scissors" && @move == "Paper"
      "You win!"
    elsif player_choice == "Rock" && @move == "Rock"
      "It's a draw!"
    elsif player_choice == "Rock" && @move == "Paper"
      "You lose!"
    elsif player_choice == "Rock" && @move == "Scissors"
      "You win!"
    elsif player_choice == "Paper" && @move == "Rock"
      "You win!"
    elsif player_choice == "Paper" && @move == "Paper"
      "It's a draw!"
    elsif player_choice == "Paper" && @move == "Scissors"
      "You lose!"
    end
  end
end
