require 'player'

describe Player do

  let(:subject) { described_class.new('Luca', :rock) }

  describe '#choice'do
    it 'returns the player\'s choice' do
      expect(subject.choice).to eq :rock
    end
  end

  describe '#name'do
    it 'returns the player\'s name' do
      expect(subject.name).to eq 'Luca'
    end
  end
end
