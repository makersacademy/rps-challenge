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
    player2.choice == player1.choice
  end

  def win
    (player1.choice == "Rock" && player2.choice == "Scissors") || (player1.choice == "Paper" && player2.choice == "Rock") || (  player1.choice == "Scissors" && player2.choice == "Paper")
  end

  def lose
    (player1.choice == "Rock" && player2.choice == "Paper") || (player1.choice == "Paper" && player2.choice == "Scissors") || (  player1.choice == "Scissors" && player2.choice == "Rock")
  end

  def computer_choice
      player2.random_select
  end



end
