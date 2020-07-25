require "./lib/player"

describe Player do
  subject(:lanie) { Player.new("Lanie") }
  let(:mock_computer) { double :computer }

  describe "#name" do
    it "returns the name" do
      expect(lanie.name).to eq "Lanie"
    end
  end
end
