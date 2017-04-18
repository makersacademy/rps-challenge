require "player"

describe Player do
	subject(:aday) {Player.new(:Aday, :rock)}
		it "Shows name" do
			expect(aday.name).to eq :Aday
		end

describe "Sign" do
		it "Slayer do a sign" do
			expect(aday.sign_chosen).to eq :rock
		end
	end
end
