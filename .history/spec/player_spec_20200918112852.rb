require './lib/player.rb'

describe Player do 
	subject(:ursie) { Player.new('Ursie') }
	subject(:tom) { Player.new('Tom') }
	it 'has a name' do 
		expect(ursie.name).to eq "Ursie"
	end 

	it "has a difined score as 0" do
		expect(ursie.score).to eq 0
	end 

	#describe "#play" do
	#	it "adds points to the player" do 
	#		expect(yas).to receive(:get_points)
	#		yas.play(yas)
	#	end 
	#end 

	describe "#receive points" do
		it "adds 1 point to the score" do
			expect { ursie.get_points }.to change{ ursie.score}.by(1)
		end 
	end
end 