require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player_1}
  let(:player_2) { double :player_2}

  describe 'default' do
    it 'accepts two players' do
      expect(game.player_1).not_to be_nil
      expect(game.player_2).not_to be_nil
    end
  end
end
