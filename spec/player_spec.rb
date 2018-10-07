require 'player'

describe Player do

  describe '#save_name' do
    it 'saves the player name to @name' do
      subject.save_name('Dave')
      expect(subject.name).to eq 'Dave'
    end
  end

  describe '#save_move' do
    it 'saves the player move to @move' do
      subject.save_move('Squirtle')
      expect(subject.move).to eq 'Squirtle'
    end
  end

  describe '#beats?' do
    it 'returns true if the saved move beats the move provided' do
      subject.save_move('Squirtle')
      expect(subject.beats?('Charmander')).to eq true
    end

    it 'returns false if the saved move doesn\'t beat the move provided' do
      subject.save_move('Charmander')
      expect(subject.beats?('Squirtle')).to eq false
    end

  end

end
