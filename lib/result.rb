class Result

    attr_reader :player_choice, :ai_choice, :player_name, :result

    def initialize(ai_choice, player_choice, player_name)
        @player_choice = player_choice
        @ai_choice = ai_choice
        @player_name = player_name
    end

    def run_game
		if @player_choice == @ai_choice
			result = "Sorry #{@player_name}, it's a tie!"
		elsif @player_choice == "Rock" && @ai_choice == "Scissors"
			result = "Rock beats scissors - AMAZING YOU WON!! Well done #{@player_name}!"
		elsif @player_choice == "Scissors" && @ai_choice == "Paper"
			result = "Scissors beats paper - AMAZING YOU WON!! Well done #{@player_name}!"
		elsif @player_choice == "Paper" && @ai_choice == "Rock"
			result = "Paper beats rock - AMAZING YOU WON!! Well done #{$player_name}!"
		else 
			result = "Unlucky #{@player_name}! You lost!"	
        end 
    end

end
