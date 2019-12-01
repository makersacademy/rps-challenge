require 'player'

describe Player do

  describe "#name" do
    it "allows you to set a name for the player" do
      subject.name = "Hannah"
      expect(subject.name).to eq "Hannah"
    end
  end

  describe "#turn" do
    it "allows you to set a choice for the player" do
      subject.turn = "rock"
      expect(subject.turn).to eq "rock"
    end
  end

end
