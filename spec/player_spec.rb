require 'player'

describe Player do
  subject(:player) { Player.new("Jerry") }  
  describe 'initialize' do
    it 'initializes with a name given with login' do
      expect(player.name).to eq "Jerry"
    end
  end
end

