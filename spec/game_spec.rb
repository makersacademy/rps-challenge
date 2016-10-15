require 'game.rb'

describe Game do

  subject(:game) {described_class.new(player)}
  let(:player) {double :player, name: "Felix"}

  describe 'creating a game' do
    it 'creates a class instance of itself' do
      expect(Game.start_game(player)).to be_an_instance_of(Game)
    end
  end

  describe '#initialize' do
    it 'starts a game with a player' do
      expect(game.player).to eq player
    end

    it 'start a game with out a choice being made' do
      expect(game.choice).to eq nil
    end
  end
end
