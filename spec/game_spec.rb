require 'game'

describe Game do

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }

  describe '#result' do
    it 'returns win for p1: rock, p2: scissors' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq(:win)
    end
    it 'returns win for p1: paper, p2: rock' do
      allow(player1).to receive(:weapon).and_return(:paper)
      allow(player2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq(:win)
    end
    it 'returns win for p1: scissors, p2: paper' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:win)
    end
    it 'returns loss for p1: scissors, p2: rock' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq(:loss)
    end
    it 'returns loss for p1: rock, p2: paper' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:loss)    end
    it 'returns loss for p1: paper, p2: scissors' do
      allow(player1).to receive(:weapon).and_return(:paper)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq(:loss)
    end
    it 'returns draw for p1: scissors, p2: scissors' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq(:draw)
    end
    it 'returns draw for p1: rock, p2: rock' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq(:draw)
    end
    it 'returns draw for p1: paper, p2: paper' do
      allow(player1).to receive(:weapon).and_return(:paper)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:draw)
    end
  end

end
