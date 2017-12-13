require 'player'

describe Player do
  subject { described_class.new('name') }

  describe '#initialize' do
    context 'when created' do
      it 'has name' do
        expect(subject.name).to eq 'name'
      end

      it 'has score of 0' do
        expect(subject.score).to eq 0
      end
    end
  end

  describe '#increment' do
    context 'when incrementing score' do
      it 'increases by 1 with no arguments' do
        expect { subject.increment }.to change { subject.score }.by 1
      end

      it 'increases by specified amount' do
        expect { subject.increment(5) }.to change { subject.score }.by 5
      end
    end
  end
end
