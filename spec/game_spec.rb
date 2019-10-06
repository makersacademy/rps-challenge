require 'game'

describe Game do

  describe '#create' do
  let (:player1) { double :player1 }
    it 'intializes player 2 as The Computer' do
      game = Game.create(player1)
      expect(game.player2).to eq 'The Computer'
    end
  it 'stores the players name' do
    game = Game.create(player1)
    expect(game.player1).to eq player1
  end
  end
end