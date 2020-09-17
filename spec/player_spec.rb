require 'player'

describe Player do 
	it 'has a name' do 
		subject = Player.new("Yas")
		expect(subject.name).to eq "Yas"
	end 
end 