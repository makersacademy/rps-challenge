require 'game'

describe Game do

  let(:player_class) { double :player_class, new: player1 }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2, player_class) }

  describe '#initialize' do
    it 'sets value of player1' do
      expect(game.player1).to be player1
    end
  end

  describe '#result' do
    it 'returns win for p1: Rock, p2: Scissors' do
      allow(player1).to receive(:weapon).and_return(:Rock)
      allow(player2).to receive(:weapon).and_return(:Scissors)
      expect(game.result).to eq(:win)
    end
    it 'returns win for p1: Paper, p2: Rock' do
      allow(player1).to receive(:weapon).and_return(:Paper)
      allow(player2).to receive(:weapon).and_return(:Rock)
      expect(game.result).to eq(:win)
    end
    it 'returns win for p1: Scissors, p2: Paper' do
      allow(player1).to receive(:weapon).and_return(:Scissors)
      allow(player2).to receive(:weapon).and_return(:Paper)
      expect(game.result).to eq(:win)
    end
    it 'returns loss for p1: Scissors, p2: Rock' do
      allow(player1).to receive(:weapon).and_return(:Scissors)
      allow(player2).to receive(:weapon).and_return(:Rock)
      expect(game.result).to eq(:loss)
    end
    it 'returns loss for p1: Rock, p2: Paper' do
      allow(player1).to receive(:weapon).and_return(:Rock)
      allow(player2).to receive(:weapon).and_return(:Paper)
      expect(game.result).to eq(:loss)
    end
    it 'returns loss for p1: Paper, p2: Scissors' do
      allow(player1).to receive(:weapon).and_return(:Paper)
      allow(player2).to receive(:weapon).and_return(:Scissors)
      expect(game.result).to eq(:loss)
    end
    it 'returns draw for p1: Scissors, p2: Scissors' do
      allow(player1).to receive(:weapon).and_return(:Scissors)
      allow(player2).to receive(:weapon).and_return(:Scissors)
      expect(game.result).to eq(:draw)
    end
    it 'returns draw for p1: Rock, p2: Rock' do
      allow(player1).to receive(:weapon).and_return(:Rock)
      allow(player2).to receive(:weapon).and_return(:Rock)
      expect(game.result).to eq(:draw)
    end
    it 'returns draw for p1: Paper, p2: Paper' do
      allow(player1).to receive(:weapon).and_return(:Paper)
      allow(player2).to receive(:weapon).and_return(:Paper)
      expect(game.result).to eq(:draw)
    end
  end

end
