require 'player'

describe Player do
  subject(:player) { Player.new("Jerry") }  
  describe 'initialize' do
    it 'initializes with a name given with login' do
      expect(player.name).to eq "Jerry"
    end
  end
 
  describe '#wins' do
    it 'adds a point when a hand has won' do
      expect { player.wins }.to change { player.points }.by 1
    end
  end
end

