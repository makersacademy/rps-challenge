require 'rockpaperscissors'

describe RockPaperScissors do
	
	subject(:game) { described_class.new } 
	let(:player) { double :player, :name => nil, :score => 0 }

	context 'when initializing' do

		it 'requires a player name' do
			expect{ game }.to raise_error(ArgumentError)
		end

		# it 'accepts a player name' do
		# 	game("Superman")
		# 	expect( player ).to 
		# end


		xit 'accepts an additional second player'

	end

	context 'when a one player game' do

	end

	context 'when winning a round'

	# expects current player to receive a message #add_point
	# prints the current state of the game? (unit or feature test??)

	context 'when losing a round'







end