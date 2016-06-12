require 'player'

describe Player do

	subject(:player) { described_class.new(player1) }

	let(:player1) {double(:player1)}
	let(:game) { double{:game}}

	context '#name' do
		it 'has a name' do
			expect(player.name). to eq player1
		end
	end

	context '#score' do
		it 'has a score' do
			expect(player.score). to eq 0
		end
	end

	context '#win' do
		it 'increases score when winning' do
			expect{player.win}.to change{player.score}.from(0).to(1)
		end
	end

	context '#play' do
		it 'returns a move' do
			expect(player.play(:rock)).to eq(:rock)
		end

		it 'returns random move if computer plays' do
			allow(player).to receive(:play) {'rock'}
			expect(player.play).to eq('rock')
		end

	end






	# 	it 'player move updates log' do
	# 		player.choose('rock')
	# 		expect(game.score.history_log).to eq ([{"Hodor" => 'rock'}])
	# 	end
	# end

end
