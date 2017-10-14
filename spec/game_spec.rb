require 'game'

describe Game do

  let(:game) { described_class.new(player_1)}
  let(:player_1) { double :player_1 }

  describe 'initializing a player' do
    it 'returns the name of the player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe 'class methods' do
    before do
      Game.create(player_1)
    end
    it 'returns the player' do
      expect(Game.instance.player_1).to eq player_1
    end

  end

end
