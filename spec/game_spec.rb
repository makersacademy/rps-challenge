require 'game'

describe Game do
  let(:player){double :player}
  subject(:game){described_class.new(player)}

  context '#initialize' do
    it 'creates a new player' do
      expect(game.player).to eq player
    end
  end
end
