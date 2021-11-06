require "game"

describe Game do
  let(:solo_game) { Game.new("Red", "") }
  let(:multi_game) { Game.new("Red", "Blue") }

  describe '#single_game?' do
    it 'returns true if Player 2 has no name' do
      expect(solo_game.single_game?).to be true
    end
  end

end
