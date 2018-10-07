require 'player'

describe Player do

  describe '#name' do
    it 'saves the player name to @name' do
      subject.name = 'Dave'
      expect(subject.name).to eq 'Dave'
    end
  end

  describe '#move' do
    it 'saves the player move to @move' do
      subject.move = :squirtle
      expect(subject.move).to eq :squirtle
    end
  end

  describe '#beats?' do
    it 'returns true if the saved move beats the move provided' do
      subject.move = :squirtle
      expect(subject.beats?(:charmander)).to eq true
    end

    it 'returns false if the saved move doesn\'t beat the move provided' do
      subject.move = :charmander
      expect(subject.beats?(:squirtle)).to eq false
    end

  end

end
