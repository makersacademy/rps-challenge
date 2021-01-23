require 'player'

describe Player do 

  subject(:player) { Player.new("P1") }
  
  describe '#name' do 
    it 'should return a players name' do 
      expect(player.name).to eq "P1"
    end
  end
end