require 'player'

describe Player do
  let(:buffon) { described_class.new("Gianluigi") }

  describe "#name" do
    it "should return the player's name" do
      expect(buffon.name).to eq "Gianluigi"
    end
  end

  describe "#pick_action" do
    it "should return the selected action" do
      buffon.pick_action(:rock)
      expect(buffon.action).to eq :rock
    end
  end

  describe "#select random" do
    it "should return a random selection of rock, paper, or scissors" do
      expect(buffon.pick_action).to eq buffon.action
    end
  end
end
