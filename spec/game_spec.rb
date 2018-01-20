require_relative '../lib/game.rb'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(player) }

  describe '#initalize' do
    it 'initializes with a player' do
      expect(Game).to respond_to(:new).with(1).argument
    end

    it 'stores an instance of player' do
      expect(game.player).to eq(player)
    end
  end

  describe '#create' do
    it 'creates a new instance of itself' do
      expect(Game.create(player)).to be_an_instance_of(Game)
    end
  end

  describe '#instance' do
    it 'stores an instance of game' do
      game = Game.create(player)
      expect(Game.instance).to eq(game)
    end
  end

end
