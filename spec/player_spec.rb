require 'player'

describe Player do
  subject { described_class.new('Jeb Kerman') }
  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq 'Jeb Kerman'
    end
  end

  describe '#choice=, choice' do
    it 'able to set and get the choice' do
      subject.choice = :paper
      expect(subject.choice).to eq :paper
    end
  end
end
