require 'player'

describe Player do

  subject(:player) { Player.new("Alicia") }
  
  describe '#name' do
    it 'should return player name' do
      expect(subject.name).to eq "Alicia"
    end
  end
  
end