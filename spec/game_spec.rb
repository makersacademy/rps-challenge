require 'game'
require 'player'

describe Game do
  describe 'initialize' do
    it 'should initialize a game with two players when two names are provided' do
      game = Game.new({name_1: "James", name_2: "Mary"})
      expect(game.player_1.nil?).to be false
    end
  end
end
