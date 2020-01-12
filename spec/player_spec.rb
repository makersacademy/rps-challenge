require 'player'

describe Player do

  subject(:player) { Player.new("Alicia") }
  
  describe '#name' do
    it 'should return player name' do
      expect(subject.name).to eq "Alicia"
    end
  end

  describe '#move' do
    it 'allows player to choose a move' do
      expect(subject.move).to eq "Rock"
    end
  end
  
end
