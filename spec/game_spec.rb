require "game"

describe Game do
  subject(:game) { described_class.new(choice) }
  let(:choice) { :rock }

  describe "#computer" do
    it "picks random choice" do
      [:rock, :paper, :scissors].should include subject.computer_choice
    end
  end

  describe "#play" do
    it "expect tie" do
      allow(game).to receive(:computer_choice).and_return(:rock)
      expect(game.play).to eq :tie
    end

    it "expect win" do
      allow(game).to receive(:computer_choice).and_return(:scissors)
      expect(game.play).to eq :win
    end

    it "expect lose" do
      allow(game).to receive(:computer_choice).and_return(:paper)
      expect(game.play).to eq :lose
    end
  end

end
