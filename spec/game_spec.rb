require 'game'

describe Game do
  subject(:game) { Game.new(player1: player1, player2:player2) }
  let(:player1) { double(:player1, name: 'Player1') }
  let(:player2) { double(:player2, name: 'Player2') }

  describe 'result' do
    context 'two player mode' do
      it 'returns \'draw\' message when same choice' do
        expect(game.result('rock', 'rock')).to eq "Draw!"
      end
    end

    context 'one player mode' do
      it 'returns \'draw\' message when same choice' do
        allow(Kernel).to receive(:rand).and_return 0
        expect(game.result('scissors', nil)).to eq "Draw!"
      end

      it 'returns computer won message when computer chooses paper' do
        allow(Kernel).to receive(:rand).and_return 1
        expect(game.result('rock', nil)).to eq "Player2 won! paper beats rock"
      end

      it 'returns player won message when computer chooses rock' do
        allow(Kernel).to receive(:rand).and_return 2
        expect(game.result('paper', nil)).to eq "Player1 won! paper beats rock"
      end

      it 'returns computer won message when computer chooses lizard' do
        allow(Kernel).to receive(:rand).and_return 3
        expect(game.result('spock', nil)).to eq "Player2 won! lizard beats spock"
      end

      it 'returns player won message when computer chooses spock' do
        allow(Kernel).to receive(:rand).and_return 4
        expect(game.result('lizard', nil)).to eq "Player1 won! lizard beats spock"
      end
    end
  end
end
