require 'player'

describe Player do
  player1 = described_class.new("Balboa")
  context "#initialize" do
    it "has a name" do
      expect(player1.name).to eq "Balboa"
    end
  end
end
