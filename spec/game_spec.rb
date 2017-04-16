describe Game do
  subject(:game) { Game.new(hum, comp) }
  let(:hum) { double("human", :name => "Human", :choice => :rock) }
  let(:comp) { double("comp", :name => "Computer", :choice => :scissors) }

  describe "#judge_scores", :jd do
    it "responds to judge_scores" do
      expect(game).to respond_to(:judge_scores)
    end

    context "human winning" do
      it "judges human's rock to beat computer's scissors" do
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:win)
      end

      it "judges human's paper to beat computer's rock" do
        allow(hum).to receive_messages(:choice => :paper)
        allow(comp).to receive_messages(:choice => :rock)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:win)
      end

      it "judges human's scissors to beat computer's paper" do
        allow(hum).to receive_messages(:choice => :scissors)
        allow(comp).to receive_messages(:choice => :paper)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:win)
      end
    end

    context "computer winning" do
      it "judges computer's rock to beat human's scissors" do
        allow(comp).to receive_messages(:choice => :rock)
        allow(hum).to receive_messages(:choice => :scissors)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:lose)
      end

      it "judges computer's paper to beat human's rock" do
        allow(comp).to receive_messages(:choice => :paper)
        allow(hum).to receive_messages(:choice => :rock)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:lose)
      end

      it "judges computer's scissors to beat human's paper" do
        allow(comp).to receive_messages(:choice => :scissors)
        allow(hum).to receive_messages(:choice => :paper)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:lose)
      end
    end

    context "tie game" do
      it "determines a tie game when human and computer both throw rock" do
        allow(comp).to receive_messages(:choice => :rock)
        allow(hum).to receive_messages(:choice => :rock)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:tie)
      end
      it "determines a tie game when human and computer both throw paper" do
        allow(comp).to receive_messages(:choice => :paper)
        allow(hum).to receive_messages(:choice => :paper)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:tie)
      end
      it "determines a tie game when human and computer both throw scissors" do
        allow(comp).to receive_messages(:choice => :scissors)
        allow(hum).to receive_messages(:choice => :scissors)
        expect(game.judge_scores(hum.choice, comp.choice)).to eq(:tie)
      end
    end
  end

  describe "::WEAPONS" do
    it "contains an array of weapons as a constant" do
      expect(Game::WEAPONS).to eq([:rock, :paper, :scissors])
    end
  end
end
