require 'player'

describe Player do
subject(:player1) { described_class.new('Raymond') }

  describe "#result" do
    it "tells if player win or lose" do
      expect(player1.result).to eq described_class::DEFAULT_RESULT
    end
  end

end
