require 'winner'

describe Winner do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  subject(:winner) { described_class.new(player, computer) }

  describe "#determine" do
    it "Rock Wins (Rock vs. Scissors)" do
      allow(player).to receive(:move).and_return("Rock")
      allow(computer).to receive(:move).and_return("Scissors")
      expect(winner.determine).to be player
    end
    it "Paper Wins (Paper vs. Rock)" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Rock")
      expect(winner.determine).to be player
    end
    it "Scissors Wins (Paper vs. Scissors)" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Scissors")
      expect(winner.determine).to be computer
    end
    it "Draw (Paper vs. Paper)" do
      allow(player).to receive(:move).and_return("Paper")
      allow(computer).to receive(:move).and_return("Paper")
      expect(winner.determine).to be_nil
    end
  end
end
