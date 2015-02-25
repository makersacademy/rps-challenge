require 'game'

describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}
  let(:game){Game.new(player1, player2)}

  it "has two players" do
    expect(game.players).to eq [player1, player2]
  end

  context 'during game play' do

    it 'Rock beats Scissors' do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Scissors")
      expect(game.winner).to eq player1
    end

    it 'Scissors beats Paper' do
      allow(player1).to receive(:choice).and_return("Paper")
      allow(player2).to receive(:choice).and_return("Scissors")
      expect(game.winner).to eq player2
    end

    it "Paper beats Rock" do
      allow(player1).to receive(:choice).and_return("Paper")
      allow(player2).to receive(:choice).and_return("Rock")
      expect(game.winner).to eq player1
    end

    it "the result can be a draw" do
      allow(player1).to receive(:choice).and_return("Paper")
      allow(player2).to receive(:choice).and_return("Paper")
      expect(game.winner).to eq "Draw"
    end

end
end