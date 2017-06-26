require "./lib/player.rb"

describe Player do

  subject(:player) { described_class.new("jini") }

  describe "#attributes" do
    it "has a name" do
      expect(player.name).to eq "jini"
    end
  end

  describe "#choice" do
    it "can choose between rock, paper or scissors" do
      player.choose(:rock)
      expect(player.choice).to eq :rock
    end
  end
end
