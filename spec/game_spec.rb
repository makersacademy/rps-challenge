require 'game'

describe Game do
  let(:player) { double :player, name: "Samson" }
  let(:game) { Game.new(player) }
  
  describe '#name' do
    it 'displays the players name' do
      expect(game.name).to eq "Samson"
    end
  end

end
