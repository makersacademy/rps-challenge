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

end
