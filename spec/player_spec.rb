require 'player'

describe Player do
  subject { described_class.new('Bob')}

  describe '#name' do
    it 'returns the players name' do
      expect(subject.name).to eq('Bob')
    end
  end

  describe '#option' do
    it 'returns the players choice' do
      subject.choose_option('Rock')
      expect(subject.option).to eq('Rock')
    end
  end
end