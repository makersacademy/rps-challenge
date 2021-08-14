require 'opponent'

describe Opponent do

  context '#weapon' do
  
    it 'returns a random weapon - rock test' do
      srand 1233
      expect(subject.weapon).to eq('Rock')
    end

    it 'returns a random weapon - paper test' do
      srand 1230
      expect(subject.weapon).to eq('Paper')
    end

    it 'returns a random weapon - scissors test' do
      srand 1234
      expect(subject.weapon).to eq('Scissors')
    end

  end

end
