class Menu
	def welcome
		"Hello! Welcome to Rock, Paper, Scissors! What is your name?"
	end

	def welcome_player(name)
		"Hello #{name}!"
	end
end

class Game
	attr_accessor :human_score, :computer_score
	def initialize(human_score=0, computer_score=0)
		@human_score = human_score
		@computer_score = computer_score
	end

	def winner?
		@human_score == 3 || @computer_score == 3
	end
end

class Human
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def to_s
		@name	
	end
	# def valid_move?(turn)
	# 	turn == 'Rock' || turn == 'Paper' || turn == 'Scissors'
	# end
end

class Computer
	def initialize
		@game = ['Rock', 'Paper', 'Scissors']
	end
	def turn
		@game.sample
	end
end

# Program........
game = Game.new
menu = Menu.new
computer_player = Computer.new
puts menu.welcome
human_player = Human.new(name = gets.chomp.strip.capitalize)
puts menu.welcome_player(human_player)
sleep 1

until game.winner?
puts "#{human_player.name}, please enter your move ('Rock', 'Paper' or 'Scissors')"
human_turn = gets.chomp.strip.capitalize
puts "#{human_player.name}'s turn: #{human_turn}"
sleep 1
puts "Computer's turn: " + (computer_turn = computer_player.turn)
sleep 1
	# Human wins
	if (human_turn == 'Rock' && computer_turn == 'Scissors' || human_turn == 'Paper' && computer_turn == 'Rock' || human_turn == 'Scissors' && computer_turn == 'Paper')
			puts "#{name} wins!"
			@human_score += 1
	# Computer wins
	elsif (computer_turn == 'Rock' && human_turn == 'Scissors' || computer_turn == 'Paper' && human_turn == 'Rock' || computer_turn == 'Scissors' && human_turn == 'Paper')
			puts "Computer Wins!"
			@computer_score += 1
	# Draws
	elsif (computer_turn == 'Rock' && human_turn == 'Rock' || computer_turn == 'Paper' && human_turn == 'Paper' || computer_turn == 'Scissors' && human_turn == 'Scissors')
			puts "That's a draw!"
	else # Computer wins
			puts "Ooops! Please enter 'Rock', 'Paper' or 'Scissors'!"
	end
	# Score update after each turn
	sleep 1
	puts "The score is #{human_player.name}: #{human_score}, Computer player: #{computer_score}!"
end
sleep 1
# puts @human_score > @computer_score ? "#{human_player.name} wins!" : "Computer wins!"







