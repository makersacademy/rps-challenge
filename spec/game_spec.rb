require 'game'
require './features/web_helpers'

describe Game do

  describe '#result' do
    it'returns Its a draw in case of the draw' do
    player1 = double()
    player2 = double()
    game = Game.new(player1,player2)
    allow(player1).to receive(:move) {'rock'}
    allow(player2).to receive(:move) {'rock'}
    expect(game.result).to eq 'Its a draw!'
   end

 end
end
