require 'game'
require 'player'

describe Game do
        let(:player) {double(:player)}
        let(:computer) {double(:computer)}
        subject(:game) {Game.new(player, computer)}

    describe '#player1' do
        it 'responds to player 1' do
            expect(game).to respond_to(:player1)
            game.player1
        end
    end

    describe '#computer' do
        it 'responds to computer' do
            expect(game).to respond_to(:computer)
            game.computer
        end
    end

    describe '#outcome' do
        it 'responds to outcome' do
            expect(game).to respond_to(:outcome)
        end
    end

    describe '#determine_winner' do
        it 'confirms that [player - rock] beats [computer - scissors]' do
            allow(player).to receive(:move).and_return('Rock')
            allow(computer).to receive(:move).and_return('Scissors')
            expect{print game.determine_winner}.to output('Player 1').to_stdout
        end

        it 'confirms that [player - rock] draws with [computer - rock]' do
            allow(player).to receive(:move).and_return('Rock')
            allow(computer).to receive(:move).and_return('Rock')
            expect{print game.determine_winner}.to output('Draw').to_stdout
        end

        it 'confirms that [player - rock] loses to [computer - paper]' do
            allow(player).to receive(:move).and_return('Rock')
            allow(computer).to receive(:move).and_return('Paper')
            expect{print game.determine_winner}.to output('Computer').to_stdout
        end

        it 'confirms that [player - scissors] beats [computer - paper]' do
            allow(player).to receive(:move).and_return('Scissors')
            allow(computer).to receive(:move).and_return('Paper')
            expect{print game.determine_winner}.to output('Player 1').to_stdout
        end

        it 'confirms that [player - scissors] draws with [computer - scissors]' do
            allow(player).to receive(:move).and_return('Scissors')
            allow(computer).to receive(:move).and_return('Scissors')
            expect{print game.determine_winner}.to output('Draw').to_stdout
        end

        it 'confirms that [player - scissors] loses to [computer - rock]' do
            allow(player).to receive(:move).and_return('Scissors')
            allow(computer).to receive(:move).and_return('Rock')
            expect {print game.determine_winner}.to output('Computer').to_stdout
        end

        it 'confirms that [player - paper] beats [computer - rock]' do
            allow(player).to receive(:move).and_return('Paper')
            allow(computer).to receive(:move).and_return('Rock')
            expect{print game.determine_winner}.to output('Player 1').to_stdout

        end

        it 'confirms that [player - paper] draws with [computer - paper]' do
            allow(player).to receive(:move).and_return('Paper')
            allow(computer).to receive(:move).and_return('Paper')
            expect{print game.determine_winner}.to output('Draw').to_stdout
        end

        it 'confirms that [player - paper] loses to [computer - scissors]' do
            allow(player).to receive(:move).and_return('Paper')
            allow(computer).to receive(:move).and_return('Scissors')
            expect{print game.determine_winner}.to output('Computer').to_stdout
        end

    end
end
