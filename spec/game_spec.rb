require 'game'

describe Game do

	subject(:game) { described_class.new(player1, player2) }

	let(:player1) {double(:player1, name: 'Hodor')}
	let(:player2) {double(:player2, name: 'Computer')}


	describe '#player1' do
    it 'returns the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'returns the first player' do
      expect(game.player2).to eq player2
    end
  end

	context '#log' do
		it 'starts with a player' do
			expect(game.log.log). to eq ({player1.name => 0, 'Ties' => 0, 'Computer' => 0})
		end
	end


	

	# context '#game' do
	# 	it 'itself' do
	# 		expect(game.game). to eq game
	# 	end
	# end


end
