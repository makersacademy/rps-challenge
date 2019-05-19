require 'game'

describe Game do
  context 'Player 2 picks rock' do
    describe '#winner' do
      it "should return :player1 if player 1 picks paper" do
        expect(subject.winner(:paper, :rock)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks scissors" do
        expect(subject.winner(:scissors, :rock)).to eq(:player2)
      end

      it "should return nil if both players picks rock" do
        expect(subject.winner(:rock, :rock).nil?).to eq(true)
      end
    end
  end

  context 'Player 2 picks paper' do
    describe '#winner' do
      it "should return :player1 if player 1 picks scissors" do
        expect(subject.winner(:scissors, :paper)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks rock" do
        expect(subject.winner(:rock, :paper)).to eq(:player2)
      end

      it "should return nil if both players picks paper" do
        expect(subject.winner(:paper, :paper).nil?).to eq(true)
      end
    end
  end

  context 'Player 2 picks scissors' do
    describe '#winner' do
      it "should return :player1 if player 1 picks rock" do
        expect(subject.winner(:rock, :scissors)).to eq(:player1)
      end

      it "should return :player2 if player 1 picks paper" do
        expect(subject.winner(:paper, :scissors)).to eq(:player2)
      end

      it "should return nil if both player picks scissors" do
        expect(subject.winner(:scissors, :scissors).nil?).to eq(true)
      end
    end
  end
end
