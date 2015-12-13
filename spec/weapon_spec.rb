require "weapon"


describe Weapon do

subject(:steve){described_class.new(:"Steve Irwin")}


describe "#beats" do
		xit "defines the correct rankings of the weapons" do

			expect(steve.defeats?(Weapon.new(:"Crocodile"))).to eq true	
	end

end


end