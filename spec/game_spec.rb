require 'game'

describe Game do
  let(:player_1) { double :player, weapon: 'Rock'}
  let(:player_2) { double :player, weapon: 'Paper'}
  let(:game) { Game.new(player_1, player_2) }

  describe '#resolve_winner' do
    it 'Should return a winner' do
      expect(game.resolve_winner(player_1.weapon, player_2.weapon)).to eq player_2
    end
  end

end
