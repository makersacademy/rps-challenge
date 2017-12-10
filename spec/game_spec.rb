require 'game'
require 'player'

describe Game do
  let(:player_1) { double(:player, name: "James") }
  let(:player_2) { double(:player, name: "Mary") }
  describe 'initialize' do
    it 'should initialize a game with two players when two names are provided' do
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.player_1.nil?).to be false
    end

    it 'should create a new player instance with name AI when no player 2 provided' do
      game = Game.new({player_1: player_1})
      expect(game.player_2).to be_a(Player)
    end

    it 'should initialize multiplayer to false if only 1 player provided' do
      game = Game.new({player_1: player_1})
      expect(game.multiplayer).to be false
    end
    it 'should initialize multiplayer to true if both players proivded' do
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.multiplayer).to be true
    end
  end
end
