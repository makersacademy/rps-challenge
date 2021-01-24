require 'player'

describe Player do 

  subject(:player) { Player.new("P1") }
  
  describe '#name' do 
    it 'should return a players name' do 
      expect(player.name).to eq "P1"
    end
  end

  describe '#move' do 
    it 'should return a players move' do 
      expect(player.move("rock")).to eq "rock"
    end
  end

end