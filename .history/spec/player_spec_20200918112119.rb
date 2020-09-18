require './lib/player.rb'

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

	#describe "#play" do
	#	it "adds points to the player" do 
	#		expect(yas).to receive(:get_points)
	#		yas.play(yas)
	#	end 
	#end 

	describe "#receive points" do
		it "adds 1 point to the score" do
			expect { yas.get_points }.to change{ yas.score}.by(1)
		end 
	end
end 