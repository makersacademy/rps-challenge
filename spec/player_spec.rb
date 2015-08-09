require_relative '../lib/player'

describe Player do 
	let(:player) {Player.new "Alex"}

	it 'has a name when  initialiazed' do
		expect(player.name).to eq "Alex"
	end  

	
	it 'can choose an object' do
		player.choose "scissors"
		expect(player.chosen_object).to eq "Scissors"
	end 

	it 'fails if the object is not rock paper or scissors' do 
		expect{player.choose "pen"}.to raise_error 'Please choose between rock paper and scissors'
	end 
end 