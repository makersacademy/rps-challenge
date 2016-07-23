require 'rock'

describe Rock do
  subject {described_class.new}

  describe '#initialize' do
    it 'holds a list of weapons it can beat' do
      expect(subject.beat?('Scissors')).to be true
    end
  end


end
