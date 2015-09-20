require 'player.rb'

describe Player do
  describe '#choice' do
    it 'should allow user to make input' do
      expect(subject.choice(:rock)).to eq(:rock)
    end
  end
end
