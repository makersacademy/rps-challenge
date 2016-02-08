class Vsplayer

	def initialize(players=[])
		@players = players
	end

	def result
		if @players.size< 4
			return 'Waiting for player 2...'
		else
			calculate_result
			
		end
	end

	def display
		return "#{@players[0]} => #{@players[1]} VS #{@players[2]} => #{@players[3]}"
	end	


private
 	
 	def calculate_result
 		
 		if @players[1] == 'Rock' and @players[3] == 'Rock' then return 'this is a Draw!' end
		if @players[1] == 'Rock' and @players[3] == 'Paper' then return "#{@players[2]} wins!" end
		if @players[1] == 'Rock' and @players[3] == 'Scissors' then return "#{@players[0]} wins!" end
		if @players[1]== 'Paper' and @players[3] == 'Paper' then return 'this is a Draw!' end
		if @players[1] == 'Paper' and @players[3] == 'Scissors' then return "#{@players[2]} wins!" end
		if @players[1] == 'Paper' and @players[3] == 'Rock' then return "#{@players[0]} wins!" end	
		if @players[1] == 'Scissor' and @players[3] == 'Scissors' then return 'this is a Draw!' end	
		if @players[1] == 'Scissors' and @players[3] == 'Rock' then return "#{@players[2]} wins!" end
		if @players[1] == 'Scissor' and @players[3] == 'Paper' then return "#{@players[0]} wins!" end	
	end

end