require_relative 'player'

class Game

  attr_reader :game, :player_1, :player_1_choice, :comp_choice

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
    @player_1_choice = nil
  end

  def player_1_name
    @player_1.name
  end

  def set_player_1_choice(choice)
    @player_1_choice = choice
  end

  def computer_choice
    @comp_choice = ["rock", "paper", "scissors"].sample
  end

  def player_1_wins
    player_1_choice == "rock" && comp_choice == "scissors" ||
    player_1_choice == "scissors" && comp_choice == "paper" ||
    player_1_choice == "paper" && comp_choice == "rock"
  end

  def players_tied
    player_1_choice == comp_choice
  end

  def result
    if player_1_wins == true
      "You won!"
    elsif players_tied == true
      "It's a draw!"
    else
      "You lost!"
    end
  end
end
