require 'game'

describe Game do
  subject(:game) { Game.new(player1: player1, player2:player2) }
  let(:player1) { double(:player1, name: 'Player1') }
  let(:player2) { double(:player2, name: 'Player2') }

  describe 'result' do

    it 'returns winner message' do
      expect(game.result('rock', 'rock')).to eq "Draw!"
    end

    it 'returns winner message for player1' do
      allow(Kernel).to receive(:rand).and_return 0
      expect(game.result('scissors', nil)).to eq "Draw!"
    end

    it 'returns winner message' do
      allow(Kernel).to receive(:rand).and_return 1
      expect(game.result('rock', nil)).to eq "Player 2 won! paper beats rock"
    end

    it 'returns winner message' do
      allow(Kernel).to receive(:rand).and_return 2
      expect(game.result('paper', nil)).to eq "Player 1 won! paper beats rock"
    end
  end
end
