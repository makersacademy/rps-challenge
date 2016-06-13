require 'player2'

describe Player2 do

	subject(:player2) {described_class.new}

describe '#object' do
	it 'returns a shape at random' do
		expect(Player2::OBJECTS).to include player2.object
	end 

end 

end 