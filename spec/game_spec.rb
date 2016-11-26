require 'game'

describe Game do

  let(:player) { double :player }
  let(:game_klass) { spy :game_klass }

  subject(:game) { described_class.new(player) }

  describe '#self.create' do

    it 'initializes a game object' do
      Game.create(game_klass, player)
      expect(game_klass).to have_received(:new).with(player)
    end

  end

  describe '#new' do

    it 'initializes with a player in' do
      expect(game.player).to eq player
    end
  end

end
