require 'computer'

describe Computer do

  describe '#name' do
    it 'initializes with name = Rival' do
      expect(subject.name).to eq 'Rival'
    end
  end

  describe '#make_move' do
    it 'returns a random valid move' do
      srand(0)
      expect(subject.make_move).to eq :bulbasaur
    end

    it 'returns the move' do
      srand(0)
      subject.make_move
      expect(subject.move).to eq :bulbasaur
    end
  end

  describe '#beats?' do
    it 'returns true if the saved move beats the move provided' do
      srand(0)
      subject.make_move
      expect(subject.beats?(:squirtle)).to eq true
    end

    it 'returns false if the saved move doesn\'t beat the move provided' do
      srand(0)
      subject.make_move
      expect(subject.beats?(:charmander)).to eq false
    end
  end

end
