require 'game'

describe Game do
  subject(:game) { described_class.init(player_1, player_2) }
  subject(:endgame) {described_class.init(spock_player, lizard_player)}
  let(:player_1) {double :player, name: 'narwhal'}
  let(:player_2) {double :player, name: 'horse'}
  let(:spock_player) {double :player, name: 'horse', move: 'Spock'}
  let(:lizard_player) {double :player, name: 'horse', move: 'lizard'}

  describe '#initialize' do
    it 'takes players as arugments and assigns player to instance varibales' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe '#winner' do
    it 'returns the name of the winning player based on their move' do
      expect(endgame.winner).to eq lizard_player.name
    end
  end
end