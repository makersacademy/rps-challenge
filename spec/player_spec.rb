require 'player'

describe Player do

  subject(:player) { Player.new("Hannah", "Rock") }

  describe "#name" do
    it "returns the name of the player" do
      expect(subject.name).to eq "Hannah"
    end
  end

  describe "#turn" do
    it "returns the choice of the player" do
      expect(subject.turn).to eq "Rock"
    end
  end

end
