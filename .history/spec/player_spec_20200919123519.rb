require 'player'
describe Player do
	subject(:ursie) { Player.new("Ursie") }
	
	describe "#name" do 
		it "returns a player name" do 
			expect(ursie.name).to eq "Ursie"
		end 
	end 

	describe "#choice" do
		it "returns a chosen move and can store it" do
			expect(ursie.choice("paper")).to eq("paper")
		end
	end 
end 