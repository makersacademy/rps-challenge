require 'player'

describe Player do

	subject(:player) { described_class.new("Superman") }
	
	context 'when initializing' do

		it 'each player has zero points' do
			expect(player.score).to eq(0)
		end

		it 'player has a name' do
			expect(player.name).to eq("Superman")
		end

	end

	context 'turns'

	context 'when winning a round' do
		it 'increments the score up' do
			expect{player.add_point}.to change{player.score}.by(1)
		end
	end

end