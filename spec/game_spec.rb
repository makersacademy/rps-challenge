require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) {spy(:player)}

  describe '#player_name' do

    it 'return player_name' do
      game.player_name
      expect(player).to have_received(:name)
    end

  end

end