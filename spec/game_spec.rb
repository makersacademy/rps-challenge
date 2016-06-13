require 'game'

describe Game do

	subject(:game) { described_class.new(player1) }

	let(:player1) { Player.new('player1')}
	let(:player2) {double(:player2)}


	describe '#is_over' do

		it 'returns false when current rounds are below Max rounds' do
			expect(game.is_over).to eq false
		end
	end

	describe '#is_over' do

		it 'returns false when current rounds are below Max rounds' do
			expect(game.is_over).to eq false
		end
	end


	describe '#round' do

		before do
			allow(player2).to receive(:play).with ('scissors')
			game.round('rock')
		end

		it 'adds a round' do
			expect(game.rounds).to eq 1
		end
	end

	#
	# describe '#result' do
	# 
	# 	before do
	# 		game.round('rock')
	# 	end
	#
	# 	it 'Player 1 wins' do
	# 		expect(game.result).to eq 'Player1 wins'
	# 	end
	# end



end
