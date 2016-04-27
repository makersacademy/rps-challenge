require 'player'

describe Player do 

	subject(:player) { described_class.new name }
	let(:name) { double 'Player1'}

	describe '#initialize' do
		it 'has a player name' do
			expect(player.name).to eq name
		end
	end
	
	describe '#make_move' do
		it 'stores the players move' do
			expect(player.make_move('Rock')).to eq 'Rock'
		end
	end

end