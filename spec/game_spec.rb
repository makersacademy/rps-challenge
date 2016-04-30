require 'game'

describe Game do
  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  describe '#player' do
    it 'returns the player\'s name' do
      allow(player).to receive(:player).and_return(player)
      expect(game.player).to eq player
    end
  end

end
