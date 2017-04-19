require './lib/game'

describe Game do
	subject {described_class.new("rock")}
	it 'knows the computer' do
		allow_any_instance_of(described_class).to receive(:get_computer_choice) do
			"scissors"
		end
		expect(subject.computer_choice).to eq "scissors"
	end

	it 'let\'s the player win' do 
		allow_any_instance_of(described_class).to receive(:get_computer_choice) do
			"scissors"
		end
		expect(subject.result).to eq :victory
	end

	it 'beats the player' do 
		allow_any_instance_of(described_class).to receive(:get_computer_choice) do
			"paper"
		end
		expect(subject.result).to eq :defeat
	end

	it 'ties with the player' do 
		allow_any_instance_of(described_class).to receive(:get_computer_choice) do
			"rock"
		end
		expect(subject.result).to eq :tie
	end
end