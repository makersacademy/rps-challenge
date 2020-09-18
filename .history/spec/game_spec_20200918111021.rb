require 'game'
describe Game do 
	subject(:game) { described_class.new }
	let(:player1) { double :player }
	let(:player2) { double :player }

	describe "#play" do 
		it "adds points to player's score" do
			expect(player1).to receive(:get_points)
			game.play(player1)
		end 
	end 
end 