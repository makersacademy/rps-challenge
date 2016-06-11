require 'player'

describe Player do
	subject(:player) {described_class.new('Riya')}

	describe '#name' do
		it 'returns the players name' do
			expect(player.name).to eq 'Riya'
		end
	end

end