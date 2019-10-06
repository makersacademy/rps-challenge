require 'game'

describe Game do

  subject(:game) { described_class.new(player_1,player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#winner' do
    it 'returns the winner of the round' do
      allow(player_1).to receive(:move).and_return("Paper")
      allow(player_2).to receive(:move).and_return("Rock")
      expect(game.winner).to eq player_1
    end
  end

end