require "./lib/player"

describe Player do

  subject(:player_1) { described_class.new("Chris") }
  subject(:cpu_player) { double(described_class.new("Computer")) }

  describe "#player setup" do
    it "checks for instance of player" do
      expect(player_1).to be_an_instance_of(described_class)
    end

    it "can find the players name" do
      expect(player_1.name).to eq "Chris"
    end
  end

  describe "#players receive a hand" do
    it "Adds the item to the current hand" do
      expect(player_1.chooses(:scissors)).to eq :scissors
    end

    it "adds an item to CPU hand" do
      allow(cpu_player).to receive(:random_choice) { :paper }
      expect(cpu_player.random_choice).to eq :paper
    end
  end


end
