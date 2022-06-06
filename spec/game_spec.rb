require 'game'

describe Game do
  subject(:hafiz) { Game.new('Hafiz') }
  
  describe '#player wins' do
    it 'shows win' do
      expect(hafiz.win).to eq @player_1
    end
  end
end

 