require 'game'

describe Game do
  let(:player) { double :player, name: "Samson", move: :rock }
  let(:computer) { double :computer, name: :computer, move: :paper}
  let(:game) { Game.new(player, computer) }

  describe '#draw?' do
    it 'returns false if attacks arent equal' do
      expect(game.draw?).to eq false
    end
    it 'returns true if attacks are equal' do
      player_2 = double(:computer, name: :computer, move: :rock)
      expect(Game.new(player, player_2).draw?).to eq true
    end
  end
end
