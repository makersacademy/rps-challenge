require 'game_2'

describe Two_player do
  subject(:game) { described_class.new }
  let(:player_1) { double :player }

  describe '#winner' do
    it 'works out the winner of the game' do
    expect(game.winner_2).to include "wins"
    end
  end

end
