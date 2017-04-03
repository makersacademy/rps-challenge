require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  subject(:game1) {described_class.new(player_2, player_3)}
  let(:player_1) {double :player_1, hand: :paper}
  let(:player_2) {double :player_2, hand: :rock}
  let(:player_3) {double :player_3, hand: :rock}

  describe '#initialize' do
    it 'retrieves Player One' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#result' do
    it 'player_1 wins when playing Paper against Rock' do
      expect(game.result).to eq player_1
    end
  end

  describe '#draw' do
    it 'confirms draw when both players play Rock' do
      game1.result
      expect(game1.draw).to be true
    end
  end



end
