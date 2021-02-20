require 'player'

describe Player do
	subject(:ken) {Player.new("Ken")}
	describe'#name' do
		it 'should allow players to have a name' do
			expect(subject.name).to eq "Ken"
		end
	end
end