require 'game'

describe Game do
  subject(:game) {described_class.new(mike, computer)}
  let(:mike) {double :player1}
  let(:computer) {double :player2}
  let(:rock) {double :rock}

  describe "default" do
    it {is_expected.to respond_to(:player1)}
    it {expect(game.player1).to eq(mike)}
    it {expect(game.player2).to eq(computer)}
  end

  describe "#play single player" do

    describe "computer chooses paper" do

      before do
        allow(game).to receive(:player2_choice).and_return(:paper)
        expect(mike).to receive(:reset)
      end
      context "when I choose rock" do
        it "changes the players status to lose" do
          expect(mike).to receive(:status_change).with(:lose)
          game.play(:rock)
        end
      end
      context "when I choose paper" do
        it "tells the player they've drawn" do
          expect(mike).to receive(:status_change).with(:draw)
          game.play(:paper)
        end
      end
      context "when I choose scissors" do
        it "changes the player status to win" do
          expect(mike).to receive(:status_change).with(:win)
          game.play(:scissors)
        end
      end
    end

    describe "computer chooses rock" do

      before do
        allow(game).to receive(:player2_choice).and_return(:rock)
        expect(mike).to receive(:reset)
      end

      context "when I choose rock" do
        it "changes the players status to draw" do
          expect(mike).to receive(:status_change).with(:draw)
          game.play(:rock)
        end
      end
      context "when I choose scissors" do
        it "changes the player status to lose" do
          expect(mike).to receive(:status_change).with(:lose)
          game.play(:scissors)
        end
      end
      context "when I choose paper" do
        it "changes the player status to win" do
          expect(mike).to receive(:status_change).with(:win)
          game.play(:paper)
        end
      end
    end

    describe "computer chooses scissors" do
      before do
        allow(game).to receive(:player2_choice).and_return(:scissors)
        expect(mike).to receive(:reset)
      end

      context "when I choose scissors" do
        it "changes player status to draw" do
          expect(mike).to receive(:status_change).with(:draw)
          game.play(:scissors)
        end
      end
      context "when I choose rock" do
        it "changes player status to win" do
          expect(mike).to receive(:status_change).with(:win)
          game.play(:rock)
        end
      end
      context "when I choose paper" do
        it "expect player status to change to lose" do
          expect(mike).to receive(:status_change).with(:lose)
          game.play(:paper)
        end
      end
    end

  end

  describe "#play multiplayer" do
    describe "#play" do
      it {is_expected.to respond_to(:play).with(2).arguments}
      # before do
      #   expect(mike).to receive(:reset)
      # end
      context "if two arguments are passed" do
        it "tests those results against each other" do
          expect(mike).to receive(:reset)
          expect(mike).to receive(:status_change).with(:draw)
          game.play(:paper, :paper)
        end
      end
    end
  end
end
