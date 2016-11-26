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

  def draw
    computer_choice
    player2.choice == player1.choice
  end

  def win
    computer_choice
    (player1.choice == "Rock" && player2.choice == "Scissors") || (player1.choice == "Paper" && player2.choice == "Rock") || (  player1.choice == "Scissors" && player2.choice == "Paper")
  end

  def lose
    computer_choice
    (player1.choice == "Rock" && player2.choice == "Paper") || (player1.choice == "Paper" && player2.choice == "Scissors") || (  player1.choice == "Scissors" && player2.choice == "Rock")
  end


private
  def computer_choice
      player2.random_select
  end


  # def win_or_lose
  #   computer_choice
  #   if player2.choice == player1.choice
  #     puts "You have chosen: #{player1.choice}"
  #     puts "Computer has chosen: #{player2.choice}"
  #     puts "It's a draw!"
  #   elsif (player2.choice == "Paper" && player1.choice == "Scissors") || (player2.choice == "Rock" && player1.choice == "Paper") || (player1.choice == "Rock" && player2.choice == "Scissors")
  #     """
  #     You have chosen: #{player1.choice}
  #     Computer has chosen: #{player2.choice}
  #     You have won!
  #     """
  #   elsif (player2.choice == "Scissors" && player1.choice == "Paper") || (player1.choice == "Rock" && player2.choice == "Paper") || (player1.choice == "Scissors" && player2.choice == "Rock")
  #     """
  #     You have chosen: #{player1.choice}
  #     Computer has chosen: #{player2.choice}
  #     You have lost!
  #     """
  #   else
  #     fail "#{player1.name} needs to choose an option first" if player1.choice == nil
  #   end
  # end




end
