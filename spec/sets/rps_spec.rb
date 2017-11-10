require 'sets/rps'

describe Paper do
  describe '#initialize' do
    context 'when created' do
      it 'has name paper' do
        expect(subject.name).to eq :paper
      end

      it 'is set up to kill rock' do
        expect(subject.kills).to include :rock
      end
    end
  end

  include_examples 'choice'
end

describe Scissors do
  describe '#initialize' do
    context 'when created' do
      it 'has name scissors' do
        expect(subject.name).to eq :scissors
      end

      it 'is set up to kill paper' do
        expect(subject.kills).to include :paper
      end
    end
  end

  include_examples 'choice'
end

describe Rock do
  describe '#initialize' do
    context 'when created' do
      it 'has name rock' do
        expect(subject.name).to eq :rock
      end

      it 'is set up to kill scissors' do
        expect(subject.kills).to include :scissors
      end
    end
  end

  include_examples 'choice'
end
