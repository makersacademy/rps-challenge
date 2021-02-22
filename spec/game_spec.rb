require 'game'
require './features/web_helpers'

describe Game do

  describe '#result' do
    it'returns Its a draw in case of the draw' do
      player1 = double()
      player2 = double()
      game = Game.new(player1,player2)
      allow(player1).to receive(:move) { 'rock' }
      allow(player2).to receive(:move) { 'rock' }
      expect(game.result).to eq 'Its a draw!'
    end
   it'returns correct value in case of the players1 victory' do
     player1 = double()
     player2 = double()
     game = Game.new(player1,player2)
     allow(player1).to receive(:move) { 'paper' }
     allow(player2).to receive(:move) { 'rock' }
     allow(player1).to receive(:name) { 'Pug' }
     expect(game.result).to eq "#{ player1.name } won with #{ player1.move }"
   end
  it'returns correct value in case of the players2 victory' do
    player1 = double()
    player2 = double()
    game = Game.new(player1,player2)
    allow(player1).to receive(:move) { 'scissors' }
    allow(player2).to receive(:move) { 'rock' }
    allow(player2).to receive(:name) { 'Pug' }
   expect(game.result).to eq "#{ player2.name } won with #{ player2.move }"
  end
 end
end
