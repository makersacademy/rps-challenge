require 'player'

describe Player do
  subject(:player) { described_class.new("Shelly") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Shelly"
    end
  end

  describe '#choose' do
    it "stores the player's choice" do
      player.choose(2)
      expect(player.choice).to eq 2
    end
  end

  describe '#choose_random' do
    it "makes a random choice in a specified range" do
      expect(player).to receive(:rand).with(4)
      player.choose_random(5)
    end

    it 'stores the choice' do
      allow(player).to receive(:rand).and_return(3)
      player.choose_random(5)
      expect(player.choice).to eq 3
    end
  end
end
