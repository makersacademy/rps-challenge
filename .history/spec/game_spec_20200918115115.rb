require 'game'
describe Game do 
	subject(:game) { described_class.new(player1, player2) }
	let(:player1) { double :player }
	let(:player2) { double :player }

	describe "#play" do 
		it "adds points to player's score" do
			expect(player1).to receive(:get_points)
			game.play(player1)
		end 
	end 

	describe "#current player" do 
		it 'has a current player as player 1' do
			expect(game.current_turn).to eq player1
		end 
	end
end 