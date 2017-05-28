require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }

  describe '#name' do
    it 'returns a name given on initialisation' do
      expect(player.name).to eq :name
    end
  end

  describe '#player_choice' do
    it 'allows the player to give their choice' do
      expect(player.choose(:choice)).to eq :choice
    end
  end
end
