require 'game'

describe Game do
  subject(:game) { described_class.init('single_player') }
  let(:player_1) {double :player, name: 'narwhal'}
  let(:player_2) {double :player, name: 'horse'}

  describe '#add_players' do
    it 'adds players that can be retrieved' do
      described_class.add_players(player_1, player_2)
      expect(described_class.player_1).to eq player_1
      expect(described_class.player_2).to eq player_2
    end
  end

  describe '#init' do
    it 'takes an argument and assigns it to game_mode' do
      expect(game.game_mode).to eq 'single_player'
    end
  end
end