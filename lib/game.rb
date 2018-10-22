require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player

  @current_game = nil

  def initialize(player)
    @player = player
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

  def computer_choice
    @computer_choice = Computer.new.choice
  end

  def winner
    if player_win? == true then "You win!"
    elsif player_drew? == true then "You drew!"
    else "You lost!"
    end
  end

  def player_win?
    if @choice == "Rock" && @computer_choice == "Scissors"
      true
    elsif @choice == "Paper" && @computer_choice == "Rock"
      true
    elsif @choice == "Scissors" && @computer_choice == "Paper"
      true
    else false
    end
  end

  def player_drew?
    if @choice == @computer_choice
      true
    else false
    end
  end
end
