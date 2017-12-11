require 'rspec'
require './lib/game.rb'
require './lib/player.rb'

describe Game do
  let(:player1) { Player.new('Player1') }
  let(:player2) { Player.new('Player2') }

  it 'should create new game with two players' do
    new_game = Game.create_game(player1, player2)
    expect(Game.game).to eq(new_game)
  end
end
