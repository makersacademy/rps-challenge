require 'player'

describe Player do

  subject { described_class.new('Dave') }

  it 'name attr is readable' do
    expect(subject.name).to eq 'Dave'
  end

  describe '#choose' do
    it 'Rock sets choice attr' do
      subject.choose('Rock')
      expect(subject.choice).to eq 'Rock'
    end
    it 'Paper sets choice attr' do
      subject.choose('Paper')
      expect(subject.choice).to eq 'Paper'
    end
    it 'Scissors sets choice attr' do
      subject.choose('Scissors')
      expect(subject.choice).to eq 'Scissors'
    end
  end
end
