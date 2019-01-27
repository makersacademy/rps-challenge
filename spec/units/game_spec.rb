require 'game'
require 'player'

describe Game do
    player1 = Player.new('thomas')
    player2 = Player.new('freddie')
    subject(:game) {Game.new(player1, player2)}

    describe '#player1' do
        it 'returns player 1' do
            expect(game).to respond_to(:player1)
            game.player1
        end
    end

    describe '#player2' do
        it 'returns player 2' do
            expect(game).to respond_to(:player2)
            game.player2
        end
    end


    describe '#determine_winner' do
        it 'determines the winner' do
          game.player1.move = 'Rock'
          game.player2.move = 'Paper'
          expect{print game.determine_winner}.to output('Player 2').to_stdout
        end
    end
end
