require 'choicehandler'

describe ChoiceHandler do
  let(:set) { { rock: 2, scissors: 1 } }
  subject { described_class.new(set: set) }

  describe '#initialize' do
    context 'when created' do
      it 'has reference to choice set' do
        expect(subject.set).to eq set
      end
    end
  end

  describe '#sample' do
    before(:each) do
      allow(set).to receive(:keys).and_return(double(:array, sample: :rand))
    end

    context 'when sampling random choice' do
      it 'returns sample from choice set values' do
        expect(subject.sample).to eq :rand
      end
    end
  end

  describe '#compare' do
    context 'when comparing two keys' do
      it 'returns 1 when left item is stronger' do
        expect(subject.compare(:rock, :scissors)).to eq 1
      end

      it 'returns -1 when right item is stronger' do
        expect(subject.compare(:scissors, :rock)).to eq(-1)
      end

      it 'returns 0 when items are the same' do
        expect(subject.compare(:rock, :rock)).to eq 0
      end
    end

    context 'when comparing one key' do
      before(:each) { allow(subject).to receive(:sample).and_return(:rock) }

      it 'generates second key at random' do
        expect(subject.compare(:scissors)).to eq(-1)
      end
    end
  end
end
