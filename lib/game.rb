class Human
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

class Computer
	def initialize
		@game = ['Rock', 'Paper', 'Scissors']
	end
	def turn
		@game.sample
	end
end

puts "Hello! Welcome to Rock, Paper, Scissors!"
puts "What is your name?"
human_player = Human.new(name = gets.chomp.strip.capitalize)
puts "Hello #{human_player.name}"

computer_player = Computer.new
human_score = 0
computer_score = 0

until human_score == 3 || computer_score == 3
puts "#{human_player.name}, please enter your move (Rock, Paper or Scissors)"
human_turn = gets.chomp.strip.capitalize
puts "#{human_player.name}'s turn: #{human_turn}"
sleep 1
puts "Computer's turn: " + (computer_turn = computer_player.turn)
sleep 1
	# Human wins
	if (human_turn == 'Rock' && computer_turn == 'Scissors' || human_turn == 'Paper' && computer_turn == 'Rock' || human_turn == 'Scissors' && computer_turn == 'Paper')
			puts "#{name} wins!"
			human_score += 1
	# Computer wins
	elsif (computer_turn == 'Rock' && human_turn == 'Scissors' || computer_turn == 'Paper' && human_turn == 'Rock' || computer_turn == 'Scissors' && human_turn == 'Paper')
			puts "#{name} wins!"
			computer_score += 1
	# Draws
	elsif (computer_turn == 'Rock' && human_turn == 'Rock' || computer_turn == 'Paper' && human_turn == 'Paper' || computer_turn == 'Scissors' && human_turn == 'Scissors')
			puts "That's a draw!"
	else # Computer wins
			puts "Ooops! Please enter Rock, Paper or Scissors!"
	end
	# Score update after each turn
	puts "The score is #{human_player.name}: #{human_score}, Computer player: #{computer_score}!"
end
# The winner is....







