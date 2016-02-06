require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'returns player 1' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#round_winner' do
    it 'returns the round winner player_1 rock vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_winner(player_1, player_2)).to eq player_1
    end

    it 'returns the round winner player_1 paper vs rock' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_winner(player_1, player_2)).to eq player_1
    end

    it 'returns the round winner player_1 scissors vs paper' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_winner(player_1, player_2)).to eq player_1
    end

    it 'returns the round winner player_2 scissors vs rock' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_winner(player_1, player_2)).to eq player_2
    end

    it 'returns the round winner player_2 rock vs paper' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_winner(player_1, player_2)).to eq player_2
    end

    it 'returns the round winner player_2 paper vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_winner(player_1, player_2)).to eq player_2
    end

    it 'returns draw if same weapon' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_winner(player_1, player_2)).to eq 'draw'
    end
  end
end
