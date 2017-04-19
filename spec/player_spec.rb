require './lib/player'

describe Player do
	subject {described_class.new("Elena")}
	it 'knows it\'s name' do
		expect(subject.name).to eq "Elena"
	end 
end