require 'player'

describe Player do 

	subject(:player) { described_class.new name }
	let(:name) { double 'Player1'}

	describe '#initialize' do
		it 'has a player name' do
			expect(player.name).to eq name
		end
	end
	
	describe '#move' do
		it 'stores the players move' do
			expect(player.move('Rock')).to eq 'Rock'
		end
	end

end