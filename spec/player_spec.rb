require 'player'

describe Player do
  subject(:player) { described_class.new("Yoda") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Yoda"
    end
  end

  describe '.set_player' do
    it 'creates a new player' do
      expect(described_class.set_player("Yoda")).to be_instance_of described_class
    end
  end
end
