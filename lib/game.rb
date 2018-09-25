# MENUS CLASS ========================================================
class Menus
	def welcome
		puts "Hello! Welcome to Rock, Paper, Scissors! What is your name?"
	end

	def welcome_player(name)
		puts "Hello #{name}!"
	end

	def human_turn(human_player)
		puts "#{human_player}, please enter your move ('Rock', 'Paper' or 'Scissors')"
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
		if @human_score == 3	
			puts "The final score is #{human_player}: #{self.human_score}, Computer: #{self.computer_score}!"
			puts "===================================================="
			puts "The winner is #{human_player}!!!"
		elsif @computer_score == 3
			puts "The final score is #{human_player}: #{self.human_score}, Computer: #{self.computer_score}!"
			puts "===================================================="
			puts "Unlucky...the computer wins!!!"
		else
			puts "The score is now #{human_player}: #{self.human_score}, Computer: #{self.computer_score}!"
		end
	end

	def pause
		sleep 0.75
	end

	def move(human_turn, computer_turn, human_player)
		if (human_turn == 'Rock' && computer_turn == 'Scissors' || human_turn == 'Paper' && computer_turn == 'Rock' || human_turn == 'Scissors' && computer_turn == 'Paper')
				puts "#{human_player} wins!"
				self.human_score += 1
		elsif (computer_turn == 'Rock' && human_turn == 'Scissors' || computer_turn == 'Paper' && human_turn == 'Rock' || computer_turn == 'Scissors' && human_turn == 'Paper')
				puts "Computer Wins!"
				self.computer_score += 1
		elsif (computer_turn == 'Rock' && human_turn == 'Rock' || computer_turn == 'Paper' && human_turn == 'Paper' || computer_turn == 'Scissors' && human_turn == 'Scissors')
				puts "That's a draw!"
		end
	end
end
# HUMAN CLASS =================================================================
class Human
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def valid_weapons
		@valid_weapons = ['Rock', 'Paper', 'Scissors']
	end

	def to_s
		@name	
	end
end
# COMPUTER CLASS ========================================================
class Computer
	def initialize
		@move = ['Rock', 'Paper', 'Scissors']
	end
	def turn
		@move.sample
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
game.pause
# game loop
until game.winner?
	menu.human_turn(human_player)
	menu.break
	if human_player.valid_weapons.include?(human_turn = gets.chomp.strip.capitalize)
		menu.break
		puts "#{human_player.name}'s turn: #{human_turn}"
		menu.break
		game.pause
		puts "Computer's turn: " + (computer_turn = computer_player.turn)
		menu.break
		game.pause
		game.move(human_turn, computer_turn, human_player)
		menu.break
		game.pause
		game.score_update(human_player)
		menu.break
		game.pause
	else
		menu.break
		puts "Please use a valid weapon!"
		menu.break
		game.pause
	end
end







