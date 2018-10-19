require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player}

  describe "Recieves Player" do
    it 'retrieves the first player' do
      expect(game.player).to eq player
    end
  end
end
