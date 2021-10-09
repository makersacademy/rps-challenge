require "game"

describe Game do
  before do
    subject.human = Player.new("Serena")
  end

  it { should respond_to(:human) }
  it { should respond_to(:bot) }

  describe "#initalize" do
    it "sets the bot name correctly" do
      expect(subject.bot.name).to eq("Bot")
    end
  end
  describe "#choose" do
    it "sets a human choice" do
      subject.choose(1)
      expect(subject.human.choice).to eq("PAPER")
    end

    it "sets a bot choice" do
      allow(Player::CHOICES).to receive(:sample).and_return("ROCK")
      subject.choose(0)
      expect(subject.bot.choice).to eq("ROCK")
    end

    it "sets a finished flag" do
      subject.choose(1)
      expect(subject.finished?).to be true
    end
  end

  describe "#winner" do
    it "returns a winner" do
      allow(subject.human).to receive(:winner_against).and_return("Serena wins!")
      expect(subject.winner).to eq("Serena wins!")
    end
  end

  describe "#finished?" do
    it "is initially false" do
      expect(subject.finished?).to be false
    end
  end
end
