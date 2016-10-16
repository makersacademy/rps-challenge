require_relative './player.rb'
require_relative './computer.rb'

class Game

	attr_reader :player1, :player2, :outcome

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

	CHOICES = [:rock, :scissors, :paper]

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

  def player1_choice(choice)
    @player1.set_choice(choice)
  end 

  def player2_choice(choice)
    @player2.set_choice(choice)
  end

  def outcome
    if RULES[player1.choice] == player2.choice
      :win
    elsif RULES[player2.choice] == player1.choice
      :lose
    elsif player1.choice == player2.choice 
      :draw
    end
  end   

end