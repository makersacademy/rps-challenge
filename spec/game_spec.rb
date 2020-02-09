require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#outcome' do
    it 'should return a win, loss or draw' do
      allow(player_1).to receive(:name).and_return "diana"
      allow(player_1).to receive(:choice).and_return "Rock"
      allow(player_2).to receive(:choice).and_return "Scissors"
      expect(game.outcome).to eq "diana wins!"
    end
  end
end
