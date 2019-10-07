require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Archie' }
  let(:computer) { double :computer, name: 'Skynet' }


  context 'player wins' do
    it 'returns player as winner' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:scissors)
      expect(game.winner).to eq('You won!')
    end
  end

  context 'player loses' do
    it 'returns computer as winner' do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(computer).to receive(:weapon).and_return(:rock)
      expect(game.winner).to eq('You lost!')
    end
  end

  context 'draw' do
    it 'returns draw' do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(computer).to receive(:weapon).and_return(:paper)
      expect(game.winner).to eq("Draw!")
    end
  end

end
