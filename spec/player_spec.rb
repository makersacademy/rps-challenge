require 'player'

describe Player do

subject(:player) { described_class.new("Bob") }
	
	describe '#initialize' do

		it 'with a name' do
			expect(player.name).to eq "Bob"
		end
	end
end