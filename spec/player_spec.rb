
describe Player do
	subject(:sam) { Player.new("Sam")}
	describe '#name' do
		it 'returns name of player' do
			expect(sam.name).to eq "Sam"
		end
	end

end
