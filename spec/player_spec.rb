require 'player'
describe 'Player' do

  subject(:player) { Player.new("Julie") }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq "Julie"
    end
  end
  
end
