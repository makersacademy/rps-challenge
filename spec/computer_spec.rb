require 'computer'

describe Computer do
  describe '#pick' do
    it 'should pick rock, paper or scissors' do
      expect([:rock, :paper, :scissors].include?(subject.pick)).to eq(true)
    end

    it 'should store the result in a variable' do
      subject.pick
      expect([:rock, :paper, :scissors].include?(subject.result)).to eq(true)
    end
  end

  context 'computer picks rock' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :rock }
      end

      it "should return 'player' if player picks paper" do
        expect(subject.validate(:paper)).to eq(:player)
      end

      it "should return 'computer' if player picks scissors" do
        expect(subject.validate(:scissors)).to eq(:computer)
      end

      it "should return nil if player picks rock" do
        expect(subject.validate(:rock).nil?).to eq(true)
      end
    end
  end

  context 'computer picks paper' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :paper }
      end

      it "should return 'player' if player picks scissors" do
        expect(subject.validate(:scissors)).to eq(:player)
      end

      it "should return 'computer' if player picks rock" do
        expect(subject.validate(:rock)).to eq(:computer)
      end

      it "should return nil if player picks paper" do
        expect(subject.validate(:paper).nil?).to eq(true)
      end
    end
  end

  context 'computer picks scissors' do
    describe '#validate' do
      before(:each) do
        allow(subject).to receive(:result) { :scissors }
      end

      it "should return 'player' if player picks rock" do
        expect(subject.validate(:rock)).to eq(:player)
      end

      it "should return 'computer' if player picks paper" do
        expect(subject.validate(:paper)).to eq(:computer)
      end

      it "should return nil if player picks scissors" do
        expect(subject.validate(:scissors).nil?).to eq(true)
      end
    end
  end
end
