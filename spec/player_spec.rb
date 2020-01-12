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

end
