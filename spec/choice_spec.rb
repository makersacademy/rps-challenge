describe Choice do
  describe '#beats' do
    context 'when choosing Rock' do
      let(:choice) { described_class.new(:Rock) }
      it 'beats Scissors' do
        expect(choice.beats?(:Scissors)).to eq true
      end

      it "doesn't beat Rock" do
        expect(choice.beats?(:Rock)).to eq false
      end
    end

    context 'when choosing Scissors' do
      let(:choice) { described_class.new(:Scissors) }
      it 'beats Paper' do
        expect(choice.beats?(:Paper)).to eq true
      end

      it "doesn't beat Rock" do
        expect(choice.beats?(:Rock)).to eq false
      end
    end

    context 'when choosing Paper' do
      let(:choice) { described_class.new(:Paper) }
      it 'beats Rock' do
        expect(choice.beats?(:Rock)).to eq true
      end

      it "doesn't beat Paper" do
        expect(choice.beats?(:Paper)).to eq false
      end
    end

  end
end
