require 'player'

describe Player do
	let(:player) { Player.new('Sam') }
  
	describe '#player name' do
		it 'returns the player name' do
			expect(player.name).to eq('Sam')
		end
	end
end