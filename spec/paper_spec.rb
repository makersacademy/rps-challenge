require 'paper'

describe Paper do
  subject {described_class.new}

  describe '#initialize' do
    it 'holds a list of weapons it can beat' do
      expect(subject.beat?('Rock')).to eq 'Winner'
    end

    it 'determines if it will draw with the machine'  do
      expect(subject.beat?('Paper')).to eq 'Draw'
    end

    it 'determines if it will lose against the machine'  do
      expect(subject.beat?('Scissors')).to eq 'Machine'
    end
  end


end
