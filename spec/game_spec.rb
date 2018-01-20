describe Game do

  subject(:game) { described_class.new(ai, player) }
  let(:ai) { double("ai") }
  let(:player) { double("player") }


  describe "#Initialize" do
    it "checks the attribute reader player1" do
      expect(game.ai).to eq(ai)
    end

    it "checks the attribute reader player" do
      expect(game.player).to eq(player)
    end
  end

  describe "#play_match" do

    context "rock - rock" do
      it "works out the result" do
        expect(game.play_match("rock", "rock")).to eq("it's a draw!")
      end
    end

    context "rock - paper" do
      it "works out the result" do
        expect(game.play_match("rock", "paper")).to eq("you win!")
      end
    end

    context "rock - scissors" do
      it "works out the result" do
        expect(game.play_match("rock", "scissors")).to eq("you lose!")
      end
    end

    context "paper - rock" do
      it "works out the result" do
        expect(game.play_match("paper", "rock")).to eq("you lose!")
      end
    end

    context "paper - paper" do
      it "works out the result" do
        expect(game.play_match("paper", "paper")).to eq("it's a draw!")
      end
    end

    context "paper - scissors" do
      it "works out the result" do
        expect(game.play_match("paper", "scissors")).to eq("you win!")
      end
    end

    context "scissors - rock" do
      it "works out the result" do
        expect(game.play_match("scissors", "rock")).to eq("you win!")
      end
    end

    context "scissors - paper" do
      it "works out the result" do
        expect(game.play_match("scissors", "paper")).to eq("you lose!")
      end
    end

    context "scissors - scissors" do
      it "works out the result" do
        expect(game.play_match("scissors", "scissors")).to eq("it's a draw!")
      end
    end
  end
end
