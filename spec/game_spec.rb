require 'game'

describe Game do

  describe '#name' do
    it 'returns the name of the player' do
      player = Game.new("Bob")
      expect(player.name).to eq "Bob"
    end
  end
  
end