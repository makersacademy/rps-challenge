require 'player'

describe Player do
  subject(:player) { described_class.new('Player1') }

  describe '#name' do
    it 'sets player name' do
      expect(player.name).to eq 'Player1'
    end
  end

  describe '#hand' do
    it 'knows its hands' do
      expect(player.hand).to eq 'no hand'
    end
  end

  describe '#hand_chosen' do
    it 'changes its hands' do
      player.hand_chosen('rock')
      expect(player.hand).to eq 'rock'
    end
  end
end
