require 'Game'

describe Game do
  subject(:game) { described_class.new(player1) }
  let(:player1) { double :player1 }

  describe '#player1' do
    it 'returns player' do
      expect(game.player1).to eq player1
    end
  end
  describe '#set_points' do
    it 'sets the game points' do
      allow(game).to receive(:set_points).and_return(20)
      expect(game.set_points(20)).to eq 20
    end
  end
  describe '#round' do
    it 'executes a round and returns result' do
      allow(game).to receive(:computer).and_return(:scissors)
      allow(game).to receive(:player_choice).and_return(:rock)
      expect(game.result).to eq "win"
    end
  end
end
