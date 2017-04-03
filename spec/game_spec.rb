require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe '#initialize' do
    it 'retrieves Player One' do
      expect(game.player_1).to eq player_1
    end
  end
end
