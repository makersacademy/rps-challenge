require 'scissors'

describe Scissors do
  subject {described_class.new}

  describe '#initialize' do
    it 'determines if it can beat the machine' do
      expect(subject.beat?('Paper')).to eq 'Winner'
    end

    it 'determines if it will draw with the machine'  do
      expect(subject.beat?('Scissors')).to eq 'Draw'
    end

    it 'determines if it will lose against the machine'  do
      expect(subject.beat?('Rock')).to eq 'Machine'
    end
  end


end
