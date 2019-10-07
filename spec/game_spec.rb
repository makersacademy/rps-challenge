require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :player }

  describe '#winner' do
    it 'works out the winner of the game' do
    expect(game.winner).to include "wins"
    end
  end

end
