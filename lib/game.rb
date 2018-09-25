# MENUS CLASS ========================================================
class Menus
	def welcome
		puts "Hello! Welcome to Rock, Paper, Scissors! What is your name?"
	end

	def welcome_player(name)
		puts "Hello #{name}!"
	end

	def break
		puts "===================================================="
	end
end
# GAME CLASS ====================================================================
class Game
	attr_accessor :human_score, :computer_score

	def initialize(human_score=0, computer_score=0)
		@human_score = human_score
		@computer_score = computer_score
	end

	def winner?
		@human_score == 3 || @computer_score == 3
	end

	def score_update(human_player)
		if @human_score == 3 || computer_score == 3
			puts "Final score: #{human_player}: #{self.human_score}, Computer: #{self.computer_score}"
			puts "The winner is #{human_player}!!!"
		elsif @computer_score == 3
			puts "Final score: #{human_player}: #{self.human_score}, Computer: #{self.computer_score}"
			puts "Unlucky...the computer wins!!!"
		else
			puts "The score is #{human_player}: #{self.human_score}, Computer: #{self.computer_score}!"
		end
	end

	def move(human_turn, computer_turn, human_player)
		if (human_turn == 'Rock' && computer_turn == 'Scissors' || human_turn == 'Paper' && computer_turn == 'Rock' || human_turn == 'Scissors' && computer_turn == 'Paper')
				puts "#{human_player} wins!"
				self.human_score += 1
		# Computer wins
		elsif (computer_turn == 'Rock' && human_turn == 'Scissors' || computer_turn == 'Paper' && human_turn == 'Rock' || computer_turn == 'Scissors' && human_turn == 'Paper')
				puts "Computer Wins!"
				self.computer_score += 1
		# Draws
		elsif (computer_turn == 'Rock' && human_turn == 'Rock' || computer_turn == 'Paper' && human_turn == 'Paper' || computer_turn == 'Scissors' && human_turn == 'Scissors')
				puts "That's a draw!"
		else # Computer wins
				puts "Ooops! Please enter 'Rock', 'Paper' or 'Scissors'!"
		end
	end

end
# HUMAN CLASS =================================================================
class Human
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def to_s
		@name	
	end
end
# COMPUTER CLASS ========================================================
class Computer
	def initialize
		@game = ['Rock', 'Paper', 'Scissors']
	end
	def turn
		@game.sample
	end
end


# PROGRAM RUNNER ========================================================
game = Game.new
menu = Menus.new
computer_player = Computer.new
menu.welcome
human_player = Human.new(name = gets.chomp.strip.capitalize)
menu.break
menu.welcome_player(human_player)
menu.break
sleep 0.5
# game loop
until game.winner?
	puts "#{human_player.name}, please enter your move ('Rock', 'Paper' or 'Scissors')"
	menu.break
	human_turn = gets.chomp.strip.capitalize
	menu.break
	puts "#{human_player.name}'s turn: #{human_turn}"
	menu.break
	sleep 0.5
	puts "Computer's turn: " + (computer_turn = computer_player.turn)
	menu.break
	sleep 0.5
	# Game moves
	game.move(human_turn, computer_turn, human_player)
	# Score update after each turn
	menu.break
	sleep 0.5
	game.score_update(human_player)
	menu.break
	sleep 0.5
end







