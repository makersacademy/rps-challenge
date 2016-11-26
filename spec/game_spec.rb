require 'game'
require 'computer_opponent'

describe Game do

  let(:player) { double :player }
  let(:game_klass) { spy :game_klass }
  let(:weapons_nodule) { double :weapons_nodule, list: [weapon] }
  let(:weapon) { double :weapon }
  let(:opponent_klass) { spy :opponent_klass }

  subject(:game) { described_class.new(player, weapons_nodule) }

  describe '::self.create' do

    it 'creates a Game object' do
      Game.create(game_klass, player, weapons_nodule)
      expect(game_klass).to have_received(:new).with(player, weapons_nodule)
    end

  end

  describe '::self.instance' do

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
      expect(game.weapons).to be_kind_of Array
    end

  end

  describe '#generate_opponent()' do

    it 'initializes a computer opponent object' do
      game.generate_opponent(opponent_klass)
      expect(opponent_klass).to have_received(:new)
    end

  end

  describe '#opponent' do

    it 'retrieves a previously generated computer opponent' do
    game.generate_opponent(opponent_klass)
    expect(game.opponent).to eq opponent_klass
  end
  end

end
