require 'game'

describe Game do
  subject(:game) { described_class.init(player_1, player_2) }
  let(:player_1) {double :player, name: 'narwhal'}
  let(:player_2) {double :player, name: 'horse'}

  describe '#initialize' do
    it 'takes players as arugments and assigns player to instance varibales' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end
end