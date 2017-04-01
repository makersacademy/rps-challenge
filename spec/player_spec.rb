require 'player'

describe Player do
  subject(:player) { described_class.new("Yoda") }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Yoda"
    end
  end

  describe '#choice' do
    it 'records the user choide' do
      player.save_choice("Rock")
      expect(player.choice).to eq "Rock"
    end
  end

  describe '.set_instance' do
    it 'creates a new player' do
      expect(described_class.set_instance("Yoda")).to be_instance_of described_class
    end
  end

  describe '.get' do
    it 'returns the name of the player' do
      described_class.set_instance("Yoda")
      expect(described_class.get.name).to eq "Yoda"
    end
  end
end
