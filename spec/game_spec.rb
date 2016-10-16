require 'game'

describe Game do
  let (:player_1) {Player.new("Anna")}
  subject(:game) {described_class.new(player_1)}

  describe 'accepts one player' do
    it 'returns player\'s name' do
      expect(game.player_1_name).to eq("Anna")
    end
  end

end
