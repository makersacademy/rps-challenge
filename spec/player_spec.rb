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
      player.save_choice("rock")
      expect(player.choice).to eq :rock
    end
  end

  describe '.set_instance' do
    it 'creates a new player' do
      expect(described_class.set_instance("Yoda")).to be_instance_of described_class
    end
  end

  describe '.get' do
    context "when singleplayer" do
      it 'returns the player' do
        described_class.set_instance("Yoda")
        expect(described_class.get.first.name).to eq "Yoda"
    end
    end

    context "when multiplayer" do
      it 'returns both players' do
        described_class.set_instance("Yoda")
        described_class.set_instance("Darth Vader")
        p described_class.get
        expect(described_class.get.count).to eq 2
      end
    end
  end
end
