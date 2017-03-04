describe Game do
  subject(:game) { Game.new(hum, comp) }
  let(:hum) { double("human") }
  let(:comp) { double("comp") }

  describe "#judge_scores" do
    it "responds to judge_scores" do
      expect(game).to respond_to(:judge_scores)
    end
  end

end
