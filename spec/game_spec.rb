require "game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

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

      it "rock beats lizard" do
        expect(game.result(:rock, :lizard)).to eq :win
      end

      it "scissors beats paper" do
        expect(game.result(:scissors, :paper)).to eq :win
      end

      it "scissors beats lizard" do
        expect(game.result(:scissors, :lizard)).to eq :win
      end

      it "paper beats rock" do
        expect(game.result(:paper, :rock)).to eq :win
      end

      it "paper beats spock" do
        expect(game.result(:paper, :spock)).to eq :win
      end

      it "lizard beats paper" do
        expect(game.result(:lizard, :paper)).to eq :win
      end

      it "lizard beats spock" do
        expect(game.result(:lizard, :spock)).to eq :win
      end
    end

    context "player loses when computer's weapon beats player's weapon" do
      it "paper loses to scissors" do
        expect(game.result(:paper, :scissors)).to eq :lose
      end

      it "paper loses to lizard" do
        expect(game.result(:paper, :lizard)).to eq :lose
      end

      it "scissors loses to rock" do
        expect(game.result(:scissors, :rock)).to eq :lose
      end

      it "scissors loses to spock" do
        expect(game.result(:scissors, :spock)).to eq :lose
      end

      it "rock loses to paper" do
        expect(game.result(:rock, :paper)).to eq :lose
      end

      it "rock loses to spock" do
        expect(game.result(:rock, :spock)).to eq :lose
      end

      it "lizard loses to scissors" do
        expect(game.result(:lizard, :scissors)).to eq :lose
      end

      it "lizard loses to rock" do
        expect(game.result(:lizard, :rock)).to eq :lose
      end

      it "spock loses to lizard" do
        expect(game.result(:spock, :lizard)).to eq :lose
      end

      it "spock loses to paper" do
        expect(game.result(:spock, :paper)).to eq :lose
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

      it "both choose lizard" do
        expect(game.result(:lizard, :lizard)).to eq :tie
      end

      it "both choose spock" do
        expect(game.result(:spock, :spock)).to eq :tie
      end
    end
  end
end
