require "game"

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe "start" do
    it "should store current instance of Game" do
      expect(described_class.start(game)).to eq game
    end
  end

  describe "game" do
    it "should display current instance of Game" do
      described_class.start(game)
      expect(described_class.game).to eq game
    end
  end

  describe "#result" do
    context "player wins when player's weapon beats computer's weapon" do
      it "rock beats scissors" do
        expect(game.result(:rock, :scissors)).to eq :win
      end

      it "scissors beats paper" do
        expect(game.result(:scissors, :paper)).to eq :win
      end

      it "paper beats rock" do
        expect(game.result(:paper, :rock)).to eq :win
      end
    end

    context "player loses when computer's weapon beats player's weapon" do
      it "paper loses to scissors" do
        expect(game.result(:paper, :scissors)).to eq :lose
      end

      it "scissors loses to rock" do
        expect(game.result(:scissors, :rock)).to eq :lose
      end

      it "rock loses to paper" do
        expect(game.result(:rock, :paper)).to eq :lose
      end
    end

    context "a tie when player and computer choose the same weapon" do
      it "both choose rock" do
        expect(game.result(:rock, :rock)).to eq :tie
      end

      it "both choose scissors" do
        expect(game.result(:scissors, :scissors)).to eq :tie
      end

      it "both choose paper" do
        expect(game.result(:paper, :paper)).to eq :tie
      end
    end
  end
end
