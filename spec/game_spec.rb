require 'game'

describe Game do
  subject(:fake_player1) { double('player', name: "Fake Player 1") }
  subject(:game) { described_class.new(fake_player1) }

  describe '#initialize' do
    it 'receives a player on initialize' do
      expect(game.player1).to eq(fake_player1)
    end
  end
end
