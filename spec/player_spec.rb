require 'player'

describe Player do
  subject(:player) { described_class.new('Arnold') }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq('Arnold')
    end
  end

  describe '#weapon= and #weapon' do
    it 'raises error if weapon is invalid' do
      message = 'Invalid weapon'
      expect { player.weapon = (:gun) }.to raise_error(message)
    end

    it 'assigns and returns the player weapon' do
      player.weapon = :rock
      expect(player.weapon).to eq(:rock)
    end
  end
end
