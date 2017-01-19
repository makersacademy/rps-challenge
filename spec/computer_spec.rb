require 'computer'

describe Computer do

	subject(:computer) { described_class.new }

	describe "#weapon" do

		it "chooses a weapon" do
			srand(2)
			expect(computer.weapon).to eq :rock
		end

	end

end