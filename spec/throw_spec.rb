require './lib/throw'

describe Throw do
  describe '#random_choice' do
    it 'returns a random choice of RPS throw' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.random_choice).to eq "rock"
    end
  end

  describe '#initialize' do
    it 'with a random default number assigned as an attribute' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(subject.choice).to eq "paper"
    end
  end
end
