require_relative 'player'


class Game

attr_reader :player_1, :player_2, :current_turn, :player_1_choice, :player_2_choice, :auto_choice, :winner

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
		record_player_choices				
	end
	
	def record_player_choices
		@player_1_choice = @choice if @current_turn == @player_1
		@player_2_choice = @choice if @current_turn == @player_2
	end
	
	def give_result
		result == "Draw" ? @winner = "Draw" : @winner = result.name
	end
	
	def reset_choices
		@choice = nil									
		@player_1_choice = nil					
		@player_2_choice = nil						
	end
	
	def auto_choice
		@hand.sample
		#puts "Autoselection is #{@hand.sample}"
	end
	
	def result
		if same_choice? then @winner = "Draw"
		elsif	player_1_wins? then @winner = @player_1
		else @winner = @player_2 end
	end
	
	private
	
	def same_choice?
		@player_1_choice == @player_2_choice
	end

	def player_1_wins?
		rock_plays_scissors || paper_plays_rock || scissors_plays_paper
	end
	
	def rock_plays_scissors
		@player_1_choice == "rock" && @player_2_choice == "scissors"
	end
	
	def paper_plays_rock
		@player_1_choice == "paper" && @player_2_choice == "rock"
	end
	
	def scissors_plays_paper
		@player_1_choice == "scissors" && @player_2_choice == "paper"
	end
	
	def opponent_of(current_player)
		@players.select {|player| player != current_player}.first
	end
	
end