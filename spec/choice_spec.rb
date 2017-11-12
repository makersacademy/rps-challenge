shared_examples 'choice' do
  describe '#<=>' do
    subject { described_class.new }
    let(:weak) { double(:choice, name: subject.kills.first) }
    let(:strong) { double(:choice, name: nil) }

    context 'when facing an identical choice' do
      it 'returns 0' do
        expect(subject <=> subject).to eq 0
      end
    end

    context 'when facing a choice it can kill' do
      it 'returns 1' do
        expect(subject <=> weak).to eq 1
      end
    end

    context 'when facing a choice that kills it' do
      it 'returns -1' do
        expect(subject <=> strong).to eq -1
      end
    end
  end
end
