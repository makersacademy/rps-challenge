require 'game'
require 'player'

describe Game do
    player1 = Player.new('thomas')
    computer = Computer.new
    subject(:game) {Game.new(player1, computer)}

    describe '#player1' do
        it 'returns player 1' do
            expect(game).to respond_to(:player1)
            game.player1
        end
    end

    describe '#computer' do
        it 'returns computer' do
            expect(game).to respond_to(:computer)
            game.computer
        end
    end


    describe '#determine_winner' do
        it 'determines the winner' do
          game.player1.move = 'Rock'
          game.computer.move = 'Paper'
          expect{print game.determine_winner}.to output('Computer').to_stdout
        end
    end
end
