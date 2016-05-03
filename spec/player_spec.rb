require "player"

describe Player do
	subject(:aday) {Player.new(:Aday, :Rock)}
		it "Shows name" do
			expect(aday.name).to eq :Aday
		end

describe "sign" do
	it "player do a sign" do
		expect(aday.sign_chosen).to eq :Rock
		end
	end
end
