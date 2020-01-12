require 'player'

describe Player do
  subject { Player.new('Umberto') }
  describe '#name' do
    it 'return player name' do
      expect(subject.name).to eq 'Umberto'
    end
  end

  describe '#wins' do
    it 'return 0 wins at creation' do
      expect(subject.wins).to eq 0
    end
  end

  describe '#move' do
    it 'updates move' do
      subject.move = 'rock'
      expect(subject.move).to eq 'rock'
    end
  end

  describe '#add_win' do
    it 'add a win to the player' do
      expect(subject.add_win).to eq 1
    end

    it 'add 5 win to the player' do
      5.times { subject.add_win }
      expect(subject.wins).to eq 5
    end
  end

end
