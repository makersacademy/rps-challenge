require 'game'

describe Game do
  let(:player) { double :player, name: "Samson", move: :rock }
  let(:computer) { double :computer, name: :computer, move: :paper}
  let(:game) { Game.new(player, computer) }

  describe '#draw' do
    it 'returns false if attacks arent equal' do
      expect(game.draw?).to eq false
    end
  end
end
