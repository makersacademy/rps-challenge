require "game"

describe Game do
  let(:player1) { double(:player1, name: "Hugh Jass") }
  let(:player2) { double(:player2, name: "I.P. Freely") }
  subject { described_class.new(player1, player2) }

  describe "#play_round" do
    context "player 1 chooses rock" do
      it "should tie when player 2 chooses rock" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:rock)
        expect(subject.play_round).to be_nil
      end

      it "should lose when player 2 chooses paper" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:paper)
        expect(subject.play_round).to eq(player2)
      end

      it "should win when player 2 chooses scissors" do
        allow(player1).to receive(:choice).and_return(:rock)
        allow(player2).to receive(:choice).and_return(:scissors)
        expect(subject.play_round).to eq(player1)
      end
    end

    context "player 1 chooses paper" do
      it "should win when player 2 chooses rock" do
        allow(player1).to receive(:choice).and_return(:paper)
        allow(player2).to receive(:choice).and_return(:rock)
        expect(subject.play_round).to eq(player1)
      end

      it "should tie when player 2 chooses paper" do
        allow(player1).to receive(:choice).and_return(:paper)
        allow(player2).to receive(:choice).and_return(:paper)
        expect(subject.play_round).to be_nil
      end

      it "should lose when player 2 chooses scissors" do
        allow(player1).to receive(:choice).and_return(:paper)
        allow(player2).to receive(:choice).and_return(:scissors)
        expect(subject.play_round).to eq(player2)
      end
    end

    context "player 1 chooses scissors" do
      it "should lose when player 2 chooses rock" do
        allow(player1).to receive(:choice).and_return(:scissors)
        allow(player2).to receive(:choice).and_return(:rock)
        expect(subject.play_round).to eq(player2)
      end

      it "should win when player 2 chooses paper" do
        allow(player1).to receive(:choice).and_return(:scissors)
        allow(player2).to receive(:choice).and_return(:paper)
        expect(subject.play_round).to eq(player1)
      end

      it "should tie when player 2 chooses scissors" do
        allow(player1).to receive(:choice).and_return(:scissors)
        allow(player2).to receive(:choice).and_return(:scissors)
        expect(subject.play_round).to be_nil
      end
    end
  end
end
