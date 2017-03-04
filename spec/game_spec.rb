describe Game do
  subject(:game) { Game.new(hum, comp) }
  let(:hum) { double("human") }
  let(:comp) { double("comp") }

  describe "#judge_scores" do
    it "responds to judge_scores" do
      expect(game).to respond_to(:judge_scores)
    end
  end

  describe "#WEAPONS" do
    it "contains an array of weapons as a constant" do
      expect(Game::WEAPONS).to eq([:rock, :paper, :scissors])
    end
  end

end
