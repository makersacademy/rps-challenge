require 'game'

describe Game do
  let(:player_1) { double :player }
  subject(:game) { described_class.new(player_1) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
    it 'computer winns' do
      allow(player_1).to receive(:choice).and_return("Paper")
      game.computer_choice = "Scissors"
      expect(game.result).to eq "lose"
    end
    it 'player winns' do
      allow(player_1).to receive(:choice).and_return("Paper")
      game.computer_choice = "Rock"
      expect(game.result).to eq "win"
    end
    it 'draw' do
      allow(player_1).to receive(:choice).and_return("Paper")
      game.computer_choice = "Paper"
      expect(game.result).to eq "draw"
    end
  end
end
