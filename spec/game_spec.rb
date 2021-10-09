require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { Player.new('Tim') }

  describe '' do
    it 'retrieves the player name' do
      expect(game.player1).to eq(player)
    end
  end

end
