require 'rps'

describe RPS do

  subject(:subject) {described_class.new(:rock)}

  describe '#choice'do
    it { expect(subject).to respond_to :choice }
  end

  describe '#random'do
    it { expect(subject).to respond_to :random }
  end

  describe '#game'do
    it { expect(subject).to respond_to :game }
  end

  describe '#play'do
    it 'returns a draw message' do
      allow(subject).to receive(:random).and_return(:rock)
      expect(subject.play).to eq 'It looks like we are going no where!'
    end
  end



end
