require 'game'

describe Game do
  let(:computer) { double(:computer) }
  subject(:game) { described_class.new("Will", computer) }

  describe "#rock" do

    context "computer chooses rock" do
      it "should state it's a draw" do
        allow(computer).to receive(:turn).and_return("rock")
        message = "Will and computer both chose rock. It's a draw!"
        expect(game.rock).to eq message
      end
    end

    context "computer chooses scissors" do
      it "should state the player wins" do
        allow(computer).to receive(:turn).and_return("scissors")
        message = "Will chose rock and computer chose scissors. Will wins!"
        expect(game.rock).to eq message
      end
    end

    context "computer chooses paper" do
      it "should state the computer wins" do
        allow(computer).to receive(:turn).and_return("paper")
        message = "Will chose rock and computer chose paper. Computer wins!"
        expect(game.rock).to eq message
      end
    end
  end

  describe "#paper" do

    context "computer chooses paper" do
      it "should state it's a draw" do
        allow(computer).to receive(:turn).and_return("paper")
        message = "Will and computer both chose paper. It's a draw!"
        expect(game.paper).to eq message
      end
    end

    context "computer chooses rock" do
      it "should state the player wins" do
        allow(computer).to receive(:turn).and_return("rock")
        message = "Will chose paper and computer chose rock. Will wins!"
        expect(game.paper).to eq message
      end
    end
    context "computer chooses scissors" do
      it "should state the computer wins" do
        allow(computer).to receive(:turn).and_return("scissors")
        message = "Will chose paper and computer chose scissors. Computer wins!"
        expect(game.paper).to eq message
      end
    end
  end

  describe "#scissors" do

    context "computer chooses scissors" do
      it "should state it's a draw" do
        allow(computer).to receive(:turn).and_return("scissors")
        message = "Will and computer both chose scissors. It's a draw!"
        expect(game.scissors).to eq message
      end
    end

    context "computer chooses paper" do
      it "should state the player wins" do
        allow(computer).to receive(:turn).and_return("paper")
        message = "Will chose scissors and computer chose paper. Will wins!"
        expect(game.scissors).to eq message
      end
    end

    context "computer chooses rock" do
      it "should state the computer wins" do
        allow(computer).to receive(:turn).and_return("rock")
        message = "Will chose scissors and computer chose rock. Computer wins!"
        expect(game.scissors).to eq message
      end
    end
  end
end
