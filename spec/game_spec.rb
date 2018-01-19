require 'game'

describe Game do

  let (:player) {double :player}
  subject(:game) { described_class.new(player) }

  describe "#initialize" do
    it 'initializes player' do
      expect(game.player).to eq player
    end
  end

  describe "#make_move" do
    it 'stores player move' do
      game.make_move("rock")
      expect(game.player_move).to eq "rock"
    end
  end
end

