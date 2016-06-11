require "game"

describe Game do
  let(:player1) { double(:player1, name: "Hugh Jass") }
  let(:player2) { double(:player2, name: "I.P. Freely") }
  subject { described_class.new(player1, player2) }

  describe "#self.instance" do
    it "returns an instance of a game" do
      expect(described_class.instance).to be_an_instance_of(described_class)
    end
  end

  describe "#players" do
    it "has 2 players" do
      expect(subject.players.count).to eq(2)
    end
  end

  describe "#play_round" do
    context "player 1: rock, player 2: paper" do
      it "player 1 should lose the round" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:paper)

        expect(subject.play_round).to eq(player2)
      end
    end

    context "player 1: rock, player 2: rock" do
      it "players should tie" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:rock)

        expect(subject.play_round).to be_nil
      end
    end

    context "player 1: rock, player 2: scissors" do
      it "player 1 should win the round" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:scissors)

        expect(subject.play_round).to eq(player1)
      end
    end
  end
end
