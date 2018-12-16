require 'game'

describe Game do
  let(:player) { double :player, name: "Samson", attack: "Rock" }
  let(:game) { Game.new(player) }

  describe '#name' do
    it 'returns the players name' do
      expect(game.name).to eq "Samson"
    end
  end

  describe '#attack' do
    it 'returns the players attack' do
      expect(game.attack).to eq "Rock"
    end
  end

end
