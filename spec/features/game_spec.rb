require 'game'

describe Game do

  let(:name) {double :name}
  let(:player) {double :player}
  let(:computer) {double :computer}
  subject(:game) {described_class.new(player)}

  context '#initialize' do
    it 'stores player object' do
      expect(game.player).to eq player
    end
  end
end
