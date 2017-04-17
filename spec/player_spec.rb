require 'player' 

describe Player do 
	subject(:richard) { Player.new('Richard', 'Rock') }

	describe '#name' do
		it 'returns the name' do 
			expect(richard.name).to eq 'Richard'
		end
	end

	describe '#weapon' do 
		it 'returns the weapon' do 
			expect(richard.choice).to eq 'Rock'
		end
	end
end