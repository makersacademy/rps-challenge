require 'player'

describe Player do
  subject(:albie) { Player.new("Albie") }

  describe "#name" do
    it "returns a players name" do
      expect(albie.name).to eq("Albie")
    end
  end
end
