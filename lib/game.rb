require_relative 'player'
require_relative 'computer'
require 'pry'

class Game

  attr_reader :player, :computer_choice, :choice

  @current_game = nil

  def initialize(player)
    @player = player
    @choice = nil
    @computer_choice = Computer.new.choice
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def player_choice(choice)
    @choice = choice
  end

  def winner
    # binding.pry
    return "You drew!" if player_drew?
    return "You win!" if player_win?
    "You lost!"
  end

  def player_win?
    if choice == "Rock" && computer_choice == "Scissors"
      return true
    elsif choice == "Paper" # && computer_choice == "Rock"
      return true
    elsif choice == "Scissors" && computer_choice == "Paper"
      return true
    else false
    end
  end

  def player_drew?
    !!(choice == computer_choice)
  end
end
