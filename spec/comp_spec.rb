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
      srand(1)
      expect(subject.choice).to eq 'Paper'
    end
  
    it 'can be Scissors' do
      srand(3)
      expect(subject.choice).to eq 'Scissors'
    end
  end
end
