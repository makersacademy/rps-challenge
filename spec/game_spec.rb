require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player_weapon' do
    it 'lets the player choose a weapon' do
      expect(game.player_weapon).to eq 'Rock'
    end
  end
end
