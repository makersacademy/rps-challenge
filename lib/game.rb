require_relative './player.rb'
require_relative './computer.rb'

class Game

	attr_reader :player1, :player2, :computer

	CHOICES = ["Rock", "Paper", "Scissors"]

  def self.instance
		@game
	end

	def self.create(player1, player2)
		@game = Game.new(player1, player2)
	end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end  

  def outcome
    @outcome = nil
    winning_situations
    losing_situations
  end   

  def win?
    @outcome
  end

  def losing_situations
    @outcome = false if (player1.choice == "Rock" && player2.choice == "Paper") || 
    (player1.choice == "Scissors" && player2.choice == "Rock") ||
    (player1.choice == "Paper" && player2.choice == "Scissors")
  end

  def winning_situations
    @outcome = true if (player1.choice == "Rock" && player2.choice == "Scissors") ||
    (player1.choice == "Scissors" && player2.choice == "Paper") ||  
    (player1.choice == "Paper" && player2.choice == "Rock")
  end
end