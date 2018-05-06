require 'game'
require 'player'

describe Game do
  let(:player_one) { double 'player_one' }
  let(:player_two) { double 'player_two' }
  subject(:game) { described_class.new(player_one, player_two)}

  describe 'WEAPONS' do
    it 'returns a weapon' do
      expect(described_class::WEAPONS.first).to eq(:rock)
    end
  end

  describe '#result' do
    it 'returns :win if player1 has winning weapon' do
      allow(player_one).to receive(:weapon).and_return(:rock)
      allow(player_two).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq(:win)
    end

    it 'returns :draw if player1 and player2 have same weapons' do
      allow(player_one).to receive(:weapon).and_return(:paper)
      allow(player_two).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:draw)
    end

    it 'returns :lose if player1 has losing weapon' do
      allow(player_one).to receive(:weapon).and_return(:paper)
      allow(player_two).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq(:draw)
    end
  end

end
