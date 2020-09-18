require 'player'

describe Player do 
	subject(:yas) { Player.new('Yas') }
	subject(:tom) { Player.new('Tom') }
	it 'has a name' do 
		subject = Player.new("Yas")
		expect(yas.name).to eq "Yas"
	end 

	it "has a difined score as 0" do
		subject = Player.new("Yas")
		expect(yas.score).to eq 0
	end 

	describe "#play" do
		it "adds points to the player" do 
			expect(yas).to receive(:get_points)
			subject.play(self)
		end 
	end 
end 