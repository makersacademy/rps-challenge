require 'game'

describe Game do
  let(:computer) { double :computer }
  let(:player) { double(:player, name: "Elia") }
  # let(:win_move) { double( {rock: rock}) }
  subject(:game) { described_class.new(computer, player) }

  # describe '#initialize' do
  #   it "has winning_moves variable" do
  #     allow(game).to receive(:winning_moves)
  #     expect(game.winning_moves).to {:win_move}
  #   end
  # end
  describe '#select_winner' do
    before do
      allow(computer).to receive(:computer_move).and_return(:Rock)
    end
    it "returns draw when the moves rea equal" do

    expect(game.select_winner(:Rock)).to eq 'draw'
  end
     it "returns winner when the player wins the game" do

      expect(game.select_winner(:Paper)).to eq 'winner'
     end
     it "returns losser when the player loses the game" do
       expect(game.select_winner(:Scissors)).to eq 'losser'
       

     end
  end
end
