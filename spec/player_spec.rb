require "./lib/player"

describe Player do
  subject(:lanie) { Player.new("Lanie") }

  describe "#name" do
    it "returns the name" do
      expect(lanie.name).to eq "Lanie"
    end
  end
end
