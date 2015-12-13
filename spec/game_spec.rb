require 'game'


describe Game do
let(:player) {double :player}
let(:computer){double :computer}
subject(:game){described_class.new(player, computer)}
	
	it "initializes with two players" do
		expect(subject.players).to eq [player, computer]
	end

		it "evaluates a loss correctly" do
			expect(game.result(:"Steve Irwin", :"Stingray")).to eq :lose
		end

		it "evaluates a draw correctly" do
			expect(game.result(:"Steve Irwin", :"Steve Irwin")).to eq :draw
		end

		it "evaluates a win correctly" do
			expect(game.result(:"Steve Irwin", :"Crocodile")).to eq :win
		end
end