require 'game'

describe Game do

  describe '#cpu' do
    it 'recieves the cpu move' do
      expect(game.cpu).to recieve(:move)
    end
  end

  describe '#player' do
    it 'recieves the player move' do
      expect(player.cpu).to eq recieve(:move)
    end
  end
 
end