require "player"

describe Player do
  subject { Player.new("Serena") }
  describe "#choose" do
    it "sets a choice" do
      subject.choose(1)
      expect(subject.choice).to eq("PAPER")
    end
  end

  describe "#choose_random" do
    it "sets a random choice" do
      allow(Player::CHOICES).to receive(:sample).and_return("ROCK")
      subject.choose_random
      expect(subject.choice).to eq("ROCK")
    end
  end

  describe "#winner_against" do
    let(:bot) { Player.new("Bot") }
    context "when choosing ROCK" do
      before do
        subject.choose(0)
      end

      it "is a tie" do
        bot.choose(0)
        expect(subject.winner_against(bot)).to eq("Draw!")
      end

      it "returns bot as winner" do
        bot.choose(1)
        expect(subject.winner_against(bot)).to eq("Bot wins!")
      end

      it "returns player as winner" do
        bot.choose(2)
        expect(subject.winner_against(bot)).to eq("Serena wins!")
      end
    end

    context "when choosing PAPER" do
      before do
        subject.choose(1)
      end

      it "is a tie" do
        bot.choose(1)
        expect(subject.winner_against(bot)).to eq("Draw!")
      end

      it "returns bot as winner" do
        bot.choose(2)
        expect(subject.winner_against(bot)).to eq("Bot wins!")
      end

      it "returns player as winner" do
        bot.choose(0)
        expect(subject.winner_against(bot)).to eq("Serena wins!")
      end
    end

    context "when choosing SCISSORS" do
      before do
        subject.choose(2)
      end

      it "is a tie" do
        bot.choose(2)
        expect(subject.winner_against(bot)).to eq("Draw!")
      end

      it "returns bot as winner" do
        bot.choose(0)
        expect(subject.winner_against(bot)).to eq("Bot wins!")
      end

      it "returns player as winner" do
        bot.choose(1)
        expect(subject.winner_against(bot)).to eq("Serena wins!")
      end
    end
  end
end
