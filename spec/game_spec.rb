require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new(player)}
  let(:player) { double :player, move: "Rock"}

  describe '#player_move' do
    it 'player chooses rock' do
      expect(game.player_move("Rock")).to include "Rock"
    end
  end

  describe '#last_action' do
    it 'returns rock as the last action' do
      game.player_move("Rock")

      expect(game.last_action).to eq "Rock"
    end
  end
end
