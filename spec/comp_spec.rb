require 'comp'

describe Comp do
  
  it 'name attr is readable, always Computer' do
    expect(subject.name).to eq 'Computer'
  end

  describe '#choice' do
    it 'can be Rock' do
      srand(2)
      expect(subject.choice).to eq 'Rock'
    end
  
    it 'can be Paper' do
      srand(10)
      expect(subject.choice).to eq 'Paper'
    end
  
    it 'can be Scissors' do
      srand(3)
      expect(subject.choice).to eq 'Scissors'
    end

    it 'can be Lizard' do
      srand(5)
      expect(subject.choice).to eq 'Lizard'
    end

    it 'can be Spock' do
      srand(7)
      expect(subject.choice).to eq 'Spock'
    end
  end
end
