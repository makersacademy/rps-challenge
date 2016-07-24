require 'scissors'

describe Scissors do
  subject {described_class.new}

  describe '#initialize' do
    it 'holds a list of weapons it can beat' do
      expect(subject.beat?('Paper')).to be true
    end
  end


end
