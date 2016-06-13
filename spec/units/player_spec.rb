require 'player'

describe Player do
  subject(:player) { described_class.new("Alistair")}

  describe "#initialize" do
    it "has a default name 'Anonymous' if none given" do
      player = described_class.new()
      expect(player.name).to eq "Anonymous"
    end

    it "has no weapon initially" do
      expect(player.weapon).to be nil
    end
  end

  describe "#name" do
    it "has a name" do
      expect(player.name).to eq "Alistair"
    end
  end

  describe "#select_weapon" do
    it "saves weapon as a symbol" do
      player.select_weapon("rock")
      expect(player.weapon).to eq :rock
    end
  end

  describe "#add_point" do
    it "adds +1 point to player_1's score" do
      expect{player.add_point}.to change{player.score}.by 1
    end
  end

end
