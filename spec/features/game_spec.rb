require 'game'

describe Game do

  let(:name) {double :name}
  let(:player) {double :player}
  let(:computer) {double :computer}
  subject(:game) {described_class.new(player, computer)}

  context '#initialize' do
    it 'stores player object' do
      expect(game.player).to eq player
    end

    it 'stores computer object' do
      expect(game.computer).to eq computer
    end
  end
end
