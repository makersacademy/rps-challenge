require 'player'

describe Player do

	subject(:ollie){ described_class.new("Ollie") }
	
	context '#initialize' do
		it 'Sets a player\'s name, which can be accessed' do
			expect(ollie.name).to eq "Ollie"
		end
	end

end