class Vscomputer

	def initialize(player)
		@player = player
		@computer = ['Rock', 'Paper', 'Scissors'].shuffle
	end

	def solution
		@computer.shuffle
		fight
		
	end	
	def computer_selects
		@computer.first
	end	

	private

	def fight
		if @player == 'Rock' and @computer.first == 'Rock' then return 'this is a Draw!' end
		if @player == 'Rock' and @computer.first == 'Paper' then return 'Computer wins!' end
		if @player == 'Rock' and @computer.first == 'Scissors' then return	'You win!' end
		if @player == 'Paper' and @computer.first == 'Paper' then return 'this is a Draw!' end
		if @player == 'Paper' and @computer.first == 'Scissors' then return 'Computer wins!' end
		if @player == 'Paper' and @computer.first == 'Rock' then return	'You win!' end	
		if @player == 'Scissor' and @computer.first == 'Scissors' then return 'this is a Draw!' end	
		if @player == 'Scissors' and @computer.first == 'Rock' then return 'Computer wins!' end	
		if @player == 'Scissors' and @computer.first == 'Paper' then return	'You win!' end		
	end		
end


