require 'player'

describe Player do
  subject(:player) { described_class.new('Archie', :rock) }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq 'Archie'
    end
  end

  describe '#weapon' do
    it 'returns the player\'s weapon of choice' do
      expect(player.weapon).to eq :rock
    end
  end
end
