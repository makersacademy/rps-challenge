require 'player'

describe Player do

	subject(:richard) { Player.new("Richard") }

	it 'creates instance of Player class' do
		expect(richard).to be_instance_of Player
	end

	
end