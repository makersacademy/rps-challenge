require 'game'

describe Game do 
	subject(:game)	{described_class.new}
	let(:computer_choice) {double :computer, choice: "paper"}
	let(:game_choice) {double :game}

	describe '#player' do
		it "returns the tool" do
			expect(game.player("rock")).to eq "rock"
		end
	end
end