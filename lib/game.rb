require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
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
    end
  end

  def player_drew?
    if @choice == "Rock" && @computer_choice == "Rock"
      true
    elsif @choice == "Paper" && @computer_choice == "Paper"
      true
    elsif @choice == "Scissors" && @computer_choice == "Scissors"
      true
    end
  end

end
