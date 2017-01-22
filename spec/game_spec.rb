require 'game'

describe Game do
  subject(:game) {described_class.new(mike)}
  let(:mike) {double :player}
  let(:rock) {double :rock}

  describe "default" do
    it {is_expected.to respond_to(:player)}
    it {expect(game.player).to eq(mike)}
  end

  describe "#play" do
    it {is_expected.to respond_to(:play).with(1).argument}
    context "when I choose rock and computer chooses paper" do
      it "doesn't tell the player they've won" do
        expect(mike).to_not receive(:wins)
        allow(game).to receive(:computer_choice).and_return(:paper)
        game.play(:rock)
      end
    end
    context "when I choose rock and computer chooses scissors" do
      it "lets the player know they've won" do
        expect(mike).to receive(:wins)
        allow(game).to receive(:computer_choice).and_return(:scissors)
        game.play(:rock)
      end
    end
    context "when I choose rock and computer chooses rock" do
      it "lets the player know they've drawn" do
        expect(mike).to receive(:draws)
        allow(game).to receive(:computer_choice).and_return(:rock)
        game.play(:rock)
      end
    end
    context "when I choose paper and computer chooses paper" do
      it "tells the player they've drawn" do
        expect(mike).to receive(:draws)
        allow(game).to receive(:computer_choice).and_return(:paper)
        game.play(:paper)
      end
    end
    context "when I choose paper and computer chooses scissors" do
      it "lets the player know they've won" do
        expect(mike).to_not receive(:wins)
        allow(game).to receive(:computer_choice).and_return(:scissors)
        game.play(:paper)
      end
    end
    context "when I choose rock and computer chooses rock" do
      it "lets the player know they've drawn" do
        expect(mike).to receive(:wins)
        allow(game).to receive(:computer_choice).and_return(:rock)
        game.play(:paper)
      end
    end
  end
end
