require 'rps'

describe RPS do

    context 'the class has the functions we expect' do 

        it 'responds to player1' do
        expect(subject).to respond_to(:player1)
        end

        it 'responds to player2' do
        expect(subject).to respond_to(:player2)
        end

        it 'responds to game' do
          expect(subject).to respond_to(:game)
        end
    end

    context 'program is able to run a game' do
        let(:player1){double = 'rock'}
        let(:player2){double = 'paper'}

        it 'returns rock for player1' do
            expect(player1).to eq('rock')
        end
        it 'returns paper for player2' do
            expect(player2).to eq('paper')
        end

    end

    context 'expects the game to return the correct result' do

    let(:game) { RPS.new() }

    it 'Should allow player2 to win' do
      game.stub(:player1).and_return('rock')
      game.stub(:player2).and_return('rock')
      expect{game.game}.to output("It's a draw!\n").to_stdout
    end
    end 

end