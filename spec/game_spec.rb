require 'game'

RSpec.describe Game do
  
  it 'initializes with 2 players' do
    player1 = double('Player1')
    player2 = double('Player2')
    game = Game.new(player1, player2)
    expect(game.players).to eq([player1, player2])
  end

end