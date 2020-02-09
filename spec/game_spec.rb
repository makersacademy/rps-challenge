require 'game'

describe Game do
  subject(:game) { described_class.new("Foobar") }

  describe '#player_name' do
    it 'should return the player name' do
      expect(game.player_name).to eq "Foobar"
    end
  end

end