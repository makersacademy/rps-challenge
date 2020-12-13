RSpec.describe Game do
  subject { described_class.new(players: [player1, player2]) }

  describe "#winner" do
    let(:player1) { Player.new(name: "Milou", choice: "rock") }
    let(:player2) { Player.new(name: "Mittens", choice: "paper") }

    it "returns winner of the game" do
      expect(subject.winner).to eql(player2)
    end

    context "if there is no winner" do
      let(:player1) { Player.new(name: "Milou", choice: "rock") }
      let(:player2) { Player.new(name: "Mittens", choice: "rock") }

      it "returns nil" do
        expect(subject.winner).to be_nil
      end
    end
  end

  describe "#draw?" do
    context "when draw" do
      let(:player1) { Player.new(name: "Milou", choice: "rock") }
      let(:player2) { Player.new(name: "Mittens", choice: "rock") }

      it "returns true" do
        expect(subject.draw?).to be_truthy
      end
    end

    context "when there is a winner" do
      let(:player1) { Player.new(name: "Milou", choice: "rock") }
      let(:player2) { Player.new(name: "Mittens", choice: "paper") }

      it "returns false" do
        expect(subject.draw?).to be_falsey
      end
    end
  end
end
