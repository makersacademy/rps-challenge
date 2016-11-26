require './lib/player.rb'
require './lib/computer.rb'

class Game

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # def display_choice
  #   if player1.choice == nil
  #     "Select ROCK, PAPER or SCISSORS"
  #   else
  #     "You have chosen: #{player1.choice}"
  #   end
  # end

  def win_or_lose
    computer_choice
    if player2.choice == player1.choice
      "You have chosen: #{player1.choice} and Computer has chosen: #{player2.choice}. You draw!"
    elsif (player2.choice == "Paper" && player1.choice == "Scissors") || (player2.choice == "Rock" && player1.choice == "Paper") || (player1.choice == "Rock" && player2.choice == "Scissors")
      "You have chosen: #{player1.choice} and Computer has chosen: #{player2.choice}. You have won!"
    elsif (player2.choice == "Scissors" && player1.choice == "Paper") || (player1.choice == "Rock" && player2.choice == "Paper") || (player1.choice == "Scissors" && player2.choice == "Rock")
      "You have chosen: #{player1.choice} and Computer has chosen: #{player2.choice}. You have lost!"
    else
      ""
    end
  end

  private
  def computer_choice
      player2.random_select
  end


end
