require 'player'

describe Player do
	subject(:ken) {Player.new("Ken", "rock")}
	describe'#name' do
		it 'should allow players to have a name' do
			expect(subject.name).to eq "Ken"
		end
		it 'should allow players to make a move' do
			expect(subject.move).to eq "rock"
		end
	end
end
