require 'turn'

describe Turn do

  let(:player1) { double(:player1, name: 'John', selection: 'Paper', score_up: nil) }
  let(:player2) { double(:player2, name: 'Computer', selection: 'Rock', score_up: nil) }
  subject(:turn) { described_class.new(player1, player2) }

  describe '#play' do
    it 'returns a winning message' do
      expect(turn.play).to eq 'You won!'
    end

    it 'returns a lose message' do
      allow(player1).to receive(:selection) { 'Scissors' }
      expect(turn.play).to eq 'You lost!'
    end

    it 'returns a tie message' do
      allow(player1).to receive(:selection) { 'Rock' }
      expect(turn.play).to eq 'No winners!'
    end
  end

  describe '#score_up' do
    it 'increases the score of the winning player' do
      expect(player1).to receive(:score_up)
      turn.play
    end
  end
end
