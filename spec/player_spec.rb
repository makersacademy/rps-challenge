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
end
