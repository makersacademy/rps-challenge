require "player"

describe Player do
  subject(:stacy) { Player.new("Stacy") }

  describe "#name" do
    it "returns the name" do
      expect(stacy.name).to eq "Stacy"
    end
  end

end