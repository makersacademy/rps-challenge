require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  describe "#initialize" do
    it 'initializes game with a player' do
      expect(game.player).to eq player
    end
  end

  describe "#choose_weapon" do
    it 'returns player weapon choice' do
      game.choose_weapon("rock")
      expect(game.player_weapon).to eq "rock"
    end
  end

end
