require 'computer'

describe Computer do

  describe '#name' do
    it 'initializes with name = Rival' do
      expect(subject.name).to eq 'Rival'
    end
  end

  describe '#move' do
    it 'returns a random valid move' do
      srand(0)
      expect(subject.move).to eq 'Bulbasaur'
    end
  end

end
