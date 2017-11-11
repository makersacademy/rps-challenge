require 'game'

describe Game do

  let(:player1) { double(:player1) }
  let(:computer) { double(:computer) }
  let(:new_game) { described_class.new(player1, computer) }

  describe "#player1" do
    context "when calling #player1" do
      it "should return player1" do
        expect(new_game.player1).to eq(player1)
      end
    end
  end

  describe "#start" do
    context "when starting a new game" do
      it "should return the current instance of the game" do
        Game.start(new_game)
        expect(Game.read).to eq(new_game)
      end
    end
  end

  describe "#winner" do
    context "when player picks rock and comp picks scissors" do
      it "should return 1" do
        allow(player1).to receive(:choice).and_return("rock")
        allow(computer).to receive(:choice).and_return("scissors")
        expect(new_game.result).to eq(1)
      end
    end
    context "when player picks paper and comp picks rock" do
      it "should return 1" do
        allow(player1).to receive(:choice).and_return("paper")
        allow(computer).to receive(:choice).and_return("rock")
        expect(new_game.result).to eq(1)
      end
    end
    context "when player picks scissors and comp picks paper" do
      it "should return 1" do
        allow(player1).to receive(:choice).and_return("scissors")
        allow(computer).to receive(:choice).and_return("paper")
        expect(new_game.result).to eq(1)
      end
    end

    context "when player picks rock and comp picks paper" do
      it "should return -1" do
        allow(player1).to receive(:choice).and_return("rock")
        allow(computer).to receive(:choice).and_return("paper")
        expect(new_game.result).to eq(-1)
      end
    end
    context "when player picks paper and comp picks scissors" do
      it "should return -1" do
        allow(player1).to receive(:choice).and_return("paper")
        allow(computer).to receive(:choice).and_return("scissors")
        expect(new_game.result).to eq(-1)
      end
    end
    context "when player picks scissors and comp picks rock" do
      it "should return -1" do
        allow(player1).to receive(:choice).and_return("scissors")
        allow(computer).to receive(:choice).and_return("rock")
        expect(new_game.result).to eq(-1)
      end
    end

    context "when both pick rock" do
      it "should return 0" do
        allow(player1).to receive(:choice).and_return("rock")
        allow(computer).to receive(:choice).and_return("rock")
        expect(new_game.result).to eq(0)
      end
    end
    context "when both pick paper" do
      it "should return 0" do
        allow(player1).to receive(:choice).and_return("paper")
        allow(computer).to receive(:choice).and_return("paper")
        expect(new_game.result).to eq(0)
      end
    end
    context "when both pick scissors" do
      it "should return 0" do
        allow(player1).to receive(:choice).and_return("scissors")
        allow(computer).to receive(:choice).and_return("scissors")
        expect(new_game.result).to eq(0)
      end
    end
  end

end
