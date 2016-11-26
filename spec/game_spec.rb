require 'game'

describe Game do

  let(:player) { double :player }
  let(:game_klass) { spy :game_klass }
  let(:weapons_nodule) { double :weapons_nodule, list: [weapon] }
  let(:weapon) { double :weapon }

  subject(:game) { described_class.new(player, weapons_nodule) }

  describe '#self.create' do

    it 'creates a Game object' do
      Game.create(game_klass, player, weapons_nodule)
      expect(game_klass).to have_received(:new).with(player, weapons_nodule)
    end

  end

  describe '#self.instance' do

    it 'returns a Game object' do
      Game.create(game_klass, player, weapons_nodule)
      expect(Game.instance).to be game_klass
    end

  end

  describe '#new' do

    it 'initializes with a player in' do
      expect(game.player).to eq player
    end

    it 'initializes with a weapons module in' do
      expect(game.weapons.list).to be_kind_of Array
    end

  end

end
