require 'player'

describe Player do

  subject(:player) { Player.new("Alicia") }
  
  describe '#name' do
    it 'should return player name' do
      expect(subject.name).to eq "Alicia"
    end
  end

  describe '#rock' do
    it 'allows player to choose a move' do
      expect(subject.rock).to eq "Rock"
    end
  end

  describe '#rock' do
    it 'allows player to choose a move' do
      expect(subject.paper).to eq "Paper"
    end
  end

end
