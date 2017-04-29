require 'player'

describe Player do
  subject(:player) { described_class.new('CaptainCode') }

  describe '#name' do
    it 'returns the correct name' do
      expect(player.name).to eq 'CaptainCode'
    end
  end

  describe '#score' do
    it 'starts session with 0 wins' do
      expect(player.score). to eq 0
    end
  end

  describe '#win_game' do
    it 'adds 1 score point to score' do
      player.win_round
      expect(player.score). to eq 1
    end
  end

end
