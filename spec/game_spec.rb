require 'game'

describe Game do
  let(:player_a) { double :player_a }
  let(:player_b) { double :player_b }
  subject(:game) { described_class.new(player_a, player_b) }

  describe '#result' do
    it 'should return player_a winning a game' do
      allow(player_a).to receive(:weapon).and_return(:scissors)
      allow(player_b).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:win)
    end

    it 'should return player_a losing a game' do
      allow(player_a).to receive(:weapon).and_return(:rock)
      allow(player_b).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:lose)
    end

    it 'should return a draw' do
      allow(player_a).to receive(:weapon).and_return(:paper)
      allow(player_b).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:draw)
    end
  end
end
