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

  describe '#game_result' do
    it 'is a draw' do
      allow(player).to receive(:chosen_weapon).and_return(:rock)
      allow(computer).to receive(:chosen_weapon).and_return(:rock)
      expect(gamze.result).to eq "It's a draw"
    end
  end
end
