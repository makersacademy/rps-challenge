require 'player'

describe Player do

subject(:player) { described_class.new('Thor') }

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq 'Thor'
    end
  end

  describe '#set_hand' do
    it 'sets the hand' do
      player.set_hand('scissors')
      expect(player.hand).to eq :scissors 
    end
  end

end
