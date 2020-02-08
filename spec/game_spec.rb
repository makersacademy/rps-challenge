require 'game'

describe Game do
  subject(:game) { described_class.new("dave") }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq "dave"
    end
  end
end