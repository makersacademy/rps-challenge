require 'player'

describe Player do
  describe '#initialize' do
    it "requires a name" do
      player = described_class.new("Becca")
      expect(player.name).to eq "Becca"
    end
  end
end
