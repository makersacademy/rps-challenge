require 'result_calculator'

describe ResultCalculator do

  let(:player_1) {double :player, hand: 'Lizard'}
  let(:player_2) {double :player, hand: 'Spock'}
  subject(:true_game) {described_class.new(player_1.hand, player_2.hand)}
  subject(:false_game) {described_class.new(player_2.hand, player_1.hand)}
  subject(:draw_game) {described_class.new(player_1.hand, player_1.hand)}

  describe '#player1_wins?' do
    it 'player 1 wins' do
      expect(true_game.player1_wins?).to eq true
    end

    it 'player 2 wins' do
      expect(false_game.player1_wins?).to eq false
    end

    it 'draws' do
      expect(draw_game.player1_wins?).to eq 'Draw'
    end
  end
end
