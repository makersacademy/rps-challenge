require 'game'

describe Game do
  let(:player1) { double }
  let(:player2) { double }
  let(:game) { Game.new(player1, player2) }

  context '#initialize' do
    it 'holds players in an array called by an instance variable' do
      expect(game.players[0]).to eq player1
    end
  end

  # this test doesn't feel great... is there a better way/ should I be testing array.sample at all?
  context '#generate_move' do
    it 'randomly generates a move' do
      expect(game.generate_move).to be_a String
    end
  end
end
