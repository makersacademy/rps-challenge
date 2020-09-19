require './lib/player.rb'
describe Player do
	subject(:ursie) { Player.new("Ursie") }
	
	describe "#name" do 
		it "returns a player name" do 
			expect(ursie.name).to eq "Ursie"
		end 
	end 

	describe "#move" do
		it "returns a chosen move" do
			expect(ursie.move("scissors")).to eq "scissors"
		end
end 