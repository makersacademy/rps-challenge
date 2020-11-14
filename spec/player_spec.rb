require 'player'

describe Player do
  subject(:fran) { described_class.new("Fran") }

  describe "#name" do
    it "returns the name" do
      expect(fran.name).to eq "Fran"
    end
  end
end
