require_relative 'player'


class Game

attr_reader :player_1, :player_2, :current_turn, :choice, :player_1_choice, :player_2_choice, :auto_choice, :winner
#Can be removed from attr_reader later (:player_1_choice, :player_2_choice)

	def initialize(player1, player2)
		@player_1 = player1
		@player_2 = player2
		@players = [player1,player2]
		@current_turn = player1
		@hand = ["rock", "paper", "scissors"]
	end
	
	def self.create_game(player_1, player_2)
	  @rps_game = Game.new(player_1, player_2)
	end
	
	def self.game_instance
	  @rps_game
	end
	
	def switch_turns
		@current_turn = opponent_of(current_turn)	
	end
	
	def selection(choice)
		@choice = choice
	end
	
	def record_player_choices
		@player_1_choice = choice if @current_turn == @player_1
		@player_2_choice = choice if @current_turn == @player_2
	end
	
	def give_result
		result == "Draw" ? @winner = "Draw" : @winner = result.name
	end
	
	def reset_choices
		@choice = nil												#Move to "reset" method
		@player_1_choice = nil							#Move to "reset" method
		@player_2_choice = nil							#Move to "reset" method
	end
	
	def auto_choice
		@hand.sample
		#puts "Autoselection is #{@hand.sample}"
	end
	
	def result
		if  @player_1_choice == @player_2_choice
			@winner = "Draw"
		elsif	(@player_1_choice == "rock" && @player_2_choice == "scissors") ||
		(@player_1_choice == "paper" && @player_2_choice == "rock") ||
		(@player_1_choice == "scissors" && @player_2_choice == "paper")
			@winner = @player_1
		else
			@winner = @player_2
		end
		# @winner = @player_1 if @player_1_choice == "rock" && @player_2_choice == "scissors"
		# @winner = @player_1 if @player_1_choice == "paper" && @player_2_choice == "rock"
		# @winner = @player_1 if @player_1_choice == "scissors" && @player_2_choice == "paper"
		# @winner = "Draw" if @player_1_choice == @player_2_choice
		# @winner = @player_2
		# puts "Something has gone wrong"																				#remove
	end
	
	private
	
	def opponent_of(current_player)
		@players.select {|player| player != current_player}.first
	end
	
end