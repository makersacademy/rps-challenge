require 'game'

describe Game do
  subject(:game) { described_class.new(player1: player1, player2:player2, turn: turn) }
  let(:player1) { double(:player1, name: 'Player1', won_turn: nil) }
  let(:player2) { double(:player2, name: 'Player2', won_turn: nil) }
  let(:turn) { double(:turn) }

  describe 'update score' do
    it 'adds 1 to winning player score' do
      allow(turn).to receive(:result).and_return "Player2 won! paper beats rock"
      expect(player2).to receive :won_turn
      game.result('rock', 'paper')
    end
  end
end
