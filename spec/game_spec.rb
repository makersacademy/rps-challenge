require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer.weapon) }
  let(:player) { double :player, name: 'Dave' }
  let(:computer) { double :computer, weapon: :rock}

  describe '#player_weapon' do
    it 'returns the player\'s weapon' do
      allow(player).to receive(:weapon=).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(game.player_weapon).to eq :paper
    end
  end

  describe '#computer_weapon' do
    it 'returns the computer\'s weapon' do
      expect(game.computer_weapon).to eq :rock
    end
  end

  describe '#result' do
    it 'returns winning result' do
      allow(player).to receive(:weapon=).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :win
    end

    it 'returns losing result' do
      allow(player).to receive(:weapon=).and_return(:scissors)
      allow(player).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :loss
    end

    it 'returns draw' do
      allow(player).to receive(:weapon=).and_return(:rock)
      allow(player).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :draw
    end
  end

  describe '#winner' do
    it 'returns the winner' do
      allow(player).to receive(:weapon=).and_return(:paper)
      allow(player).to receive(:weapon).and_return(:paper)
      expect(game.winner).to eq 'Dave'
    end

    context 'when it\'s a draw' do
      it 'does not return a winner' do
        allow(player).to receive(:weapon=).and_return(:rock)
        allow(player).to receive(:weapon).and_return(:rock)
        expect(game.winner).to eq nil
      end
    end
  end
end