require 'game'

describe Game do
  context 'Player 2 picks rock' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :rock }
      end

      it "should return :player1 if player 1 picks paper" do
        expect(subject.validate(:paper, :rock)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks scissors" do
        expect(subject.validate(:scissors, :rock)).to eq(:player2)
      end

      it "should return nil if both players picks rock" do
        expect(subject.validate(:rock, :rock).nil?).to eq(true)
      end
    end
  end

  context 'Player 2 picks paper' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :paper }
      end

      it "should return :player1 if player 1 picks scissors" do
        expect(subject.validate(:scissors, :paper)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks rock" do
        expect(subject.validate(:rock, :paper)).to eq(:player2)
      end

      it "should return nil if both players picks paper" do
        expect(subject.validate(:paper, :paper).nil?).to eq(true)
      end
    end
  end

  context 'Player 2 picks scissors' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :scissors }
      end

      it "should return :player1 if player 1 picks rock" do
        expect(subject.validate(:rock, :scissors)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks paper" do
        expect(subject.validate(:paper, :scissors)).to eq(:player2)
      end

      it "should return nil if both player picks scissors" do
        expect(subject.validate(:scissors, :scissors).nil?).to eq(true)
      end
    end
  end
end
