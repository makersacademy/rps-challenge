require './lib/player.rb'
describe Player do
	subject(:ursie) { Player.new("Ursie") }
	
	describe "#name" do 
		it "returns a player name" do 
			expect(ursie.name).to eq "Ursie"
		end 
	end 
end 